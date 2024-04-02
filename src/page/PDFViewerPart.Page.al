namespace Pino.PDFViewer2;
using System.Text;

page 81752 "PDF Viewer Part"
{
    Caption = 'Document Viewer';
    PageType = CardPart;
    UsageCategory = None;
    InherentPermissions = X;
    InherentEntitlements = X;

    layout
    {
        area(content)
        {
            group(General)
            {
                ShowCaption = false;
                usercontrol(PDFViewer; "PDF Viewer")
                {
                    ApplicationArea = All;

                    trigger ControlAddinReady()
                    begin
                        CurrPage.PDFViewer.LoadPDF(PDFAsTxt, false);
                    end;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if PDFAsTxt = '' then
            Error(NoPDFErr);
    end;

    procedure SetPDFDocument(PDFInStream: InStream)
    var
        Base64Convert: Codeunit "Base64 Convert";
    begin
        PDFAsTxt := Base64Convert.ToBase64(PDFInStream);
    end;

    var
        PDFAsTxt: Text;
        NoPDFErr: Label 'No PDF to display';
}
