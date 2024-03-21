unit uMontaTreeView;

interface

uses
  DB, ComCtrls, SysUtils;

type

  PMyRec = ^TMyRec;

  TMyRec = record
    ID: Integer;
    ID_Pai: Integer;
    Caption: String;
  end;

  IMontaTreeView = interface
    ['{61E82B74-B21A-449E-A1CF-CE28D314BB3E}']
    function SetDataset(ADataset: TDataset): IMontaTreeView;
    function SetIDField(AFieldName: String): IMontaTreeView;
    function SetIDFieldPai(AFieldName: String): IMontaTreeView;
    function SetFieldDescricao(AFieldName: String): IMontaTreeView;
    function SetTreeView(ATreeView: TTreeView): IMontaTreeView;
    function Execute: IMontaTreeView;
  end;

  TMontaTreeView = class(TInterfacedObject, IMontaTreeView)
  private
    FFieldDescricao: String;
    FTreeView: TTreeView;
    FDataSet: TDataset;
    FIDField: String;
    FIDFieldPai: String;
    procedure AddNodes(ANodePai: TTreeNode; AIDPai: Integer);
  public
    function SetDataset(ADataset: TDataset): IMontaTreeView;
    function SetIDField(AFieldName: String): IMontaTreeView;
    function SetIDFieldPai(AFieldName: String): IMontaTreeView;
    function SetFieldDescricao(AFieldName: String): IMontaTreeView;
    function SetTreeView(ATreeView: TTreeView): IMontaTreeView;
    function Execute: IMontaTreeView;

    constructor Create;
    destructor Destroy; override;

    class function New: IMontaTreeView;
  end;

implementation

{ TMontaTreeView }

procedure TMontaTreeView.AddNodes(ANodePai: TTreeNode; AIDPai: Integer);
var
  ID, IDPai: Integer;
  Node: TTreeNode;
  OldFilter: String;
begin
  OldFilter := FDataSet.Filter;
  FDataSet.Filter := Format('%s = %d', [FIDFieldPai, AIDPai]);
  FDataSet.Filtered := True;
  FDataSet.First;
  IDPai := AIDPai;
  while not FDataSet.Eof do
  begin
    ID := FDataSet.FieldByName(FIDField).Value;
    Node := FTreeView.Items.AddChild(ANodePai, FDataSet.FieldByName(FFieldDescricao).AsString);
    AddNodes(Node, ID);
    FDataSet.Locate(FIDField, ID, []);
    FDataSet.Next;
  end;
  FDataSet.Filter := OldFilter;
end;

constructor TMontaTreeView.Create;
begin

end;

destructor TMontaTreeView.Destroy;
begin

  inherited;
end;

function TMontaTreeView.Execute: IMontaTreeView;
var
  MyRecPtr: PMyRec;
  m: String;
  Node: TTreeNode;
  TreeViewIndex: LongInt;
begin
  Result := Self;
  FTreeView.Items.Clear;
  Node := FTreeView.Items.Add(nil, 'Relatórios');
  Node.ImageIndex := 0;
  Node.SelectedIndex := Node.ImageIndex;
  AddNodes(Node, 0);
end;

class function TMontaTreeView.New: IMontaTreeView;
begin
  Result := Self.Create;
end;

function TMontaTreeView.SetDataset(ADataset: TDataset): IMontaTreeView;
begin
  Result := Self;
  FDataSet := ADataset;
end;

function TMontaTreeView.SetFieldDescricao(AFieldName: String): IMontaTreeView;
begin
  Result := Self;
  FFieldDescricao := AFieldName;
end;

function TMontaTreeView.SetIDField(AFieldName: String): IMontaTreeView;
begin
  Result := Self;
  FIDField := AFieldName;
end;

function TMontaTreeView.SetIDFieldPai(AFieldName: String): IMontaTreeView;
begin
  Result := Self;
  FIDFieldPai := AFieldName;
end;

function TMontaTreeView.SetTreeView(ATreeView: TTreeView): IMontaTreeView;
begin
  Result := Self;
  FTreeView := ATreeView;
end;

end.
