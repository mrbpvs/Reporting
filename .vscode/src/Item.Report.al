report 50130 ItemsReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Item Inventory Report';
    RDLCLayout = 'src\ItemInventoryReport.rdl';

    dataset
    {
        dataitem(Item; Item)
        {
            column(CommonItemNo_Item; "No.")
            {
                IncludeCaption = true;
            }
            column(Description_Item; Description)
            {
                IncludeCaption = true;
            }
            column(Inventory_Item; Inventory)
            {
                IncludeCaption = true;
            }
        }
    }
}