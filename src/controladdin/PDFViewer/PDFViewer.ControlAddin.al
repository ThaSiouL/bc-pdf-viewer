namespace Pino.PDFViewer2;
controladdin "PDF Viewer"
{
    Scripts = 'https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js', 'https://unpkg.com/pdfobject@2.3.0/pdfobject.min.js', 'src/controladdin/PDFV2PDFViewer/script.js';
    StartupScript = 'src/controladdin/PDFV2PDFViewer/Startup.js';
    StyleSheets = 'src/controladdin/PDFV2PDFViewer/stylesheet.css';

    MinimumHeight = 400;
    MinimumWidth = 100;
    MaximumHeight = 2000;
    MaximumWidth = 4000;
    HorizontalStretch = true;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalShrink = true;

    event ControlAddinReady();
    procedure LoadPDF(PDFDocument: Text; IsFactbox: Boolean)
    procedure SetVisible(IsVisible: Boolean)
}