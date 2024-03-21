namespace Pino.PDFViewer2;
using System.Text;

page 81751 "PDF Viewer"
{
    Caption = 'PDF Viewer';
    PageType = Card;
    UsageCategory = None;
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
