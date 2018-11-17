object Form1: TForm1
  Left = 346
  Top = 171
  BorderStyle = bsSingle
  Caption = 'Mahasiswa'
  ClientHeight = 231
  ClientWidth = 795
  Color = clMoneyGreen
  UseDockManager = True
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 56
    Top = 56
    Width = 83
    Height = 20
    Caption = 'Mata Kuliah'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 80
    Top = 88
    Width = 57
    Height = 20
    Caption = 'Tanggal'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 96
    Top = 16
    Width = 42
    Height = 20
    Caption = 'Nama'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 608
    Top = 192
    Width = 33
    Height = 20
    Caption = 'Cari'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object nama: TEdit
    Left = 144
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object tanggal: TDateTimePicker
    Left = 144
    Top = 88
    Width = 121
    Height = 21
    BiDiMode = bdRightToLeft
    Date = 43384.932944571760000000
    Time = 43384.932944571760000000
    ParentBiDiMode = False
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 280
    Top = 16
    Width = 489
    Height = 169
    DataSource = DataModule3.DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'Id'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Title.Caption = 'Nama'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'matkul'
        Title.Alignment = taCenter
        Title.Caption = 'Mata kuliah'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 192
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 192
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 5
    OnClick = Button3Click
  end
  object matakuliah: TComboBox
    Left = 144
    Top = 56
    Width = 121
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'IPA'
      'IPS'
      'MATEMATIKA'
      'PKN'
      'AGAMA ISLAM'
      'KEWIRAUSHAAN')
  end
  object cari: TEdit
    Left = 648
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 7
    OnChange = cariChange
  end
  object Button4: TButton
    Left = 112
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Mata kuliah'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 16
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Bersih'
    TabOrder = 9
    OnClick = Button5Click
  end
end
