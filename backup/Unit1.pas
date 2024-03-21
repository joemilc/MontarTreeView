unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ZAbstractConnection, ZConnection,
  DB, StdCtrls, ComCtrls, Grids, DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TForm1 = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    TreeView1: TTreeView;
    ZQuery1id: TIntegerField;
    ZQuery1id_pai: TIntegerField;
    ZQuery1descricao: TWideStringField;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uMontaTreeView;

procedure TForm1.Button1Click(Sender: TObject);
begin
  TMontaTreeView.New
    .SetDataset(ZQuery1)
    .SetFieldDescricao('descricao')
    .SetIDField('id')
    .SetIDFieldPai('id_pai')
    .SetTreeView(TreeView1)
    .Execute;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ZConnection1.Connect;
  ZQuery1.Open;
end;

end.
