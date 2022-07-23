report 50131 "Inventory and Availability"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Inventory and Availability, by Item Category';
    RDLCLayout = 'src\InventoryandAv.rdl';

    dataset
    {
        dataitem(Item; Item)
        {
            CalcFields = Inventory, "Qty. on Purch. Order", "Qty. on Sales Order";
            column(ItemCategoryCode_Item; "Item Category Code")
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
            column(Item_No; "No.")
            {
                IncludeCaption = true;
            }
            column(Availability; Inventory - "Qty. on Sales Order" + "Qty. on Purch. Order")
            {

            }
            dataitem(ItemCategory; "Item Category")

            {

                DataItemLink = Code = field("Item Category Code");

                column(ItemCategoryDescription; Description)

                {

                    IncludeCaption = true;

                }
            }
        }
    }
    labels

    {

        ItemInventoryAvailabilityLbl = 'Inventory and Availability, by Item Category';

        AvailabilityLbl = 'Availability';

    }
}