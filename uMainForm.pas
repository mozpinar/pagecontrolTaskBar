unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    mnuStoklar: TMenuItem;
    mnuHareketler: TMenuItem;
    mnuMusteriler: TMenuItem;
    mnuSaticilar: TMenuItem;
    PageControl1: TPageControl;
    procedure mnuStoklarClick(Sender: TObject);
    procedure mnuHareketlerClick(Sender: TObject);
  private
    { Private declarations }
    procedure ShowClientForm(aClientForm : TForm);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses uHareketForm, uStokForm;
{$R *.dfm}

{ TForm1 }

procedure TForm1.mnuHareketlerClick(Sender: TObject);
begin
  ShowClientForm(THareketForm.Create(Self));
end;

procedure TForm1.mnuStoklarClick(Sender: TObject);
begin
  ShowClientForm(TStokForm.Create(Self));
end;

procedure TForm1.ShowClientForm(aClientForm: TForm);
var
  ts : TTabSheet;
begin
  ts := TTabSheet.Create(PageControl1);
  ts.PageControl := PageControl1;
  PageControl1.ActivePage := ts;
  try
    ts.Caption := aClientForm.Caption;
    aClientForm.Parent := ts;
    aClientForm.Show;
    aClientForm.Align := alClient;
    aClientForm.BorderStyle := bsNone;
  except
    ts.Free;
    Raise;
  end;
end;

end.
