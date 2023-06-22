pageextension 50387 "KOB_Custom_PO" extends "Purchase Order Subform"
{
    layout
    {
        addafter("Expected Receipt Date")
        {
            field(KOB_id; Rec."Shortcut Dimension 1 Code")
            {
                ApplicationArea = All;
            }
            field(KOB_id2; Rec."Shortcut Dimension 2 Code")
            {
                ApplicationArea = All;
            }
            field(KOB_id3; Rec."UBL_Shortcut Dimension 3 Code")
            {
                ApplicationArea = All;
            }
            field(KOB_id4; Rec."UBL_Shortcut Dimension 4 Code")
            {
                ApplicationArea = All;
            }
            field(KOB_id5; Rec."UBL_Shortcut Dimension 5 Code")
            {
                ApplicationArea = All;
            }
            field(KOB_id6; Rec."UBL_Shortcut Dimension 6 Code")
            {
                ApplicationArea = All;
            }
            field(KOB_id7; Rec."UBL_Shortcut Dimension 7 Code")
            {
                ApplicationArea = All;
            }
            field(KOB_id8; Rec."UBL_Shortcut Dimension 8 Code")
            {
                ApplicationArea = All;
            }
        }
        modify("Shortcut Dimension 1 Code")
        {
            Visible = False;
        }
        modify("Shortcut Dimension 2 Code")
        {
            Visible = False;
        }
        modify("ShortcutDimCode3")
        {
            Visible = False;
        }
        modify("ShortcutDimCode4")
        {
            Visible = False;
        }
        modify("ShortcutDimCode5")
        {
            Visible = False;
        }
        modify("ShortcutDimCode6")
        {
            Visible = False;
        }
        modify("ShortcutDimCode7")
        {
            Visible = False;
        }
        modify("ShortcutDimCode8")
        {
            Visible = False;
        }
    }
}