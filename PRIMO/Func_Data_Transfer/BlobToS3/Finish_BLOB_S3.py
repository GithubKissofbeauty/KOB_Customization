import pandas as pd
import io
from azure.storage.blob import BlobServiceClient
import boto3

def transfer_data():
    # Define your storage account connection string
    connection_string = "DefaultEndpointsProtocol=https;AccountName=storageaccountkisso9d17;AccountKey=uWbWMplZqM11nYH9GyHEFauxIheGb0uZk9Q1Vwlk7v3OBQ+Yha0bGKREg3v3nKu0XQhwm3C+GvSkiKruT1Lk4A==;EndpointSuffix=core.windows.net"

    # Create a BlobServiceClient object
    blob_service_client = BlobServiceClient.from_connection_string(connection_string)

    # Define the container and blob name
    container_name = "salemovement"
    blob_name = 'EVEANDBOY/05_รายงานรายละเอียดยอดขายรายวัน-แยกสาขา_2SOME1_20230501_20230531.xlsx'

    # Get a reference to the blob
    blob_client = blob_service_client.get_blob_client(container=container_name, blob=blob_name)

    # Read the blob data into a DataFrame
    blob_data = blob_client.download_blob().readall()
    df = pd.read_excel(io.BytesIO(blob_data))

    # AWS credentials
    aws_access_key_id = 'AKIAXRPVNETLPVZ4CZNJ'
    aws_secret_access_key = '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'

    # S3 bucket information
    bucket_name = 'kobbtvtest'
    object_key = blob_name

    # Convert DataFrame to CSV data
    csv_data = df.to_csv(index=False)

    # Create a new S3 client
    s3_client = boto3.client(
        's3',
        aws_access_key_id=aws_access_key_id,
        aws_secret_access_key=aws_secret_access_key
    )

    # Upload the CSV data to S3
    s3_client.put_object(
    Body=csv_data,
    Bucket=bucket_name,
    Key=object_key
    )

    text_output = 'File Transfer Blob to S3 Successfully.'
    return text_output
