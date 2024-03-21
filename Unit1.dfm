object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 486
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 47
    Width = 353
    Height = 433
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_pai'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Visible = True
      end>
  end
  object TreeView1: TTreeView
    Left = 367
    Top = 47
    Width = 339
    Height = 433
    Indent = 19
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 241
    Height = 33
    Caption = 'Montar TreeView'
    TabOrder = 2
    OnClick = Button1Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    HostName = 'localhost'
    Port = 0
    Database = 'montatreeview'
    User = 'root'
    Password = '1234'
    Protocol = 'mysql'
    Left = 64
    Top = 192
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from montatreeview')
    Params = <>
    Left = 64
    Top = 256
    object ZQuery1id: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object ZQuery1id_pai: TIntegerField
      FieldName = 'id_pai'
    end
    object ZQuery1descricao: TWideStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 64
    Top = 320
  end
end
