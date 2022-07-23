reportextension 50132 StdSalesInvExt extends "Standard Sales - Invoice"
{
    RDLCLayout = './src/StandardSalesInvoiceExt.rdlc';

    dataset
    {
        add(Line)
        {
            column(Order_No_Line_Lbl; Line.FieldCaption("Order No."))
            {}
            column(Order_No_Line; Line."Order No.")
            {}
            column(DisplayOrderInfo;DisplayOrderInfo)
            {}
        }
    }
    
    requestpage
    {
        layout
        {
            addlast(Options)
            {
                field(DisplayOrderInfo; DisplayOrderInfo)
                {
                    ApplicationArea = Basic, suite;
                    Caption = 'Show Order Information';
                    ToolTip = 'specifies if you want Order Information to be shown on the document';
                }
            }
        }
    }
    var
    DisplayOrderInfo: Boolean;

    
    
}