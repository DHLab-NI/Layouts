// SGH 14/10/24
// Set default column layout for Contact List

pageextension 50000 ContactListExt extends "Contact List"
{

    layout
    {

        //SHOW COLUMNS

        modify("Job Title") { Visible = true; }
        modify("Post Code") { Visible = true; }
        modify("Country/Region Code") { Visible = true; }
        modify("Mobile Phone No.") { Visible = true; }
        modify("E-Mail") { Visible = true; }
        modify("Currency Code") { Visible = true; }

        //HIDE COLUMNS



        //REORDER AND ADD COLUMNS

        moveafter("No."; Name)
        addafter("Name")
        {
            field("Company No."; Rec."Company No.")
            {
                ApplicationArea = All;
                Caption = 'Company No.';
                Visible = true;
                ToolTip = 'Specifies the Company No. that the contact belongs to. This field is valid for persons only.';
                Importance = Standard;
            }
        }
        moveafter("Company No."; "Company Name")
        moveafter("Company Name"; "Job Title")
        addafter("Job Title")
        {
            field("Organizational Level Code"; Rec."Organizational Level Code")
            {
                ApplicationArea = All;
                Caption = 'Organizational Level Code';
                Visible = true;
                ToolTip = 'Specifies the organizational code for the contact, for example, Loan Store Manager. This field is valid for persons only.';
                Importance = Standard;
            }
        }
        moveafter("Organizational Level Code"; "Business Relation")
        addafter("Business Relation")
        {
            field("External ID"; Rec."External ID")
            {
                ApplicationArea = All;
                Caption = 'External ID';
                Visible = true;
                ToolTip = 'Specifies source of contact to facilitate sorting and filtering.';
                Importance = Standard;
            }
        }
        addafter("External ID")
        {
            field(Address; Rec.Address)
            {
                ApplicationArea = All;
                Caption = 'Address';
                Visible = true;
                Importance = Standard;
            }
        }
        addafter(Address)
        {
            field("Address 2"; Rec."Address 2")
            {
                ApplicationArea = All;
                Caption = 'Address 2';
                Visible = true;
                Importance = Standard;
            }
        }
        addafter("Address 2")
        {
            field(City; Rec.City)
            {
                ApplicationArea = All;
                Caption = 'City';
                Visible = true;
                Importance = Standard;
            }
        }
        addafter(City)
        {
            field(County; Rec.County)
            {
                ApplicationArea = All;
                Caption = 'County';
                Visible = true;
                Importance = Standard;
            }
        }
        moveafter(County; "Post Code")
        moveafter("Post Code"; "Country/Region Code")
        moveafter("Country/Region Code"; "Phone No.")
        moveafter("Phone No."; "Mobile Phone No.")
        moveafter("Mobile Phone No."; "E-Mail")
        moveafter("E-Mail"; "Salesperson Code")
        moveafter("Salesperson Code"; "Territory Code")
        moveafter("Territory Code"; "Currency Code")


        //Specify position of freeze column

        modify(Control1) { FreezeColumn = "Name"; }

    }
}