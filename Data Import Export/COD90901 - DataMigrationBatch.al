codeunit 90901 "DataMigration Batch"
{
    trigger OnRun()
    var


    begin

        // BASE NAV
        XMLDataMigration.Logger('C:\Temp\SGI\3\JobBase.csv', XMLPORT::"Master Base Job");
        Commit();
        XMLDataMigration.Logger('C:\Temp\SGI\3\TaskBase.csv', XMLPORT::"Master Base Job Task");
        Commit();
        XMLDataMigration.Logger('C:\Temp\SGI\3\PlanningLineBase.csv', XMLPORT::"Master Base Job Planning");
        Commit();
        XMLDataMigration.Logger('C:\Temp\SGI\3\JobLedgerBase.csv', XMLPORT::"Master JobLedger");
        Commit();
        XMLDataMigration.Logger('C:\Temp\SGI\3\CustVendBase.csv', XMLPORT::"Master Cust/Vend Records");
        Commit();
        XMLDataMigration.Logger('C:\Temp\SGI\3\CustLedg.csv', XMLPORT::"Master Base Cust Ledgers");
        Commit();
        XMLDataMigration.Logger('C:\Temp\SGI\3\VendLedg.csv', XMLPORT::"Master Base Vend Ledgers");
        Commit();
        // XMLDataMigration.Logger('C:\Temp\SGI\3\GL.csv', XMLPORT::"Master Base GL Entry");
        // Commit();
        XMLDataMigration.Logger('C:\Temp\SGI\3\SalesDocs.csv', XMLPORT::"Master Base Sales Doc");
        Commit();
        XMLDataMigration.Logger('C:\Temp\SGI\3\PurchDocs.csv', XMLPORT::"Master Base Purchs Doc");
        Commit();
        XMLDataMigration.Logger('C:\Temp\SGI\3\RecordLink.csv', XMLPORT::"Master Base Record Links");
        Commit();
        XMLDataMigration.Logger('C:\Temp\SGI\3\BankCheckLedger.csv', XMLPORT::"Master Base Bank Acc Entry");
        Commit();
        XMLDataMigration.Logger('C:\Temp\SGI\3\Bank.csv', XMLPORT::"Master Base Bank");
        Commit();
    end;

    procedure setPath(p: Text)
    begin
        path := p;
    end;

    var
        XMLDataMigration: Codeunit "Master Data Migration";
        path: Text;
}