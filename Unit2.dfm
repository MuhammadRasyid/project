object Form2: TForm2
  Left = 367
  Top = 193
  Width = 574
  Height = 209
  Caption = 'Mata Kuliah'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 77
    Height = 20
    Caption = 'Matakuliah'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 56
    Width = 39
    Height = 20
    Caption = 'Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 88
    Width = 57
    Height = 20
    Caption = 'Tanggal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object tanggal: TDateTimePicker
    Left = 88
    Top = 88
    Width = 121
    Height = 21
    Date = 43414.932944571760000000
    Time = 43414.932944571760000000
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 224
    Top = 16
    Width = 320
    Height = 89
    DataSource = DataModule3.DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Button1: TButton
    Left = 88
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 264
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 4
    OnClick = Button3Click
  end
  object matakuliah: TEdit
    Left = 88
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object kelas: TEdit
    Left = 88
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Button4: TButton
    Left = 352
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Tutup'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 440
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Mahasiswa'
    TabOrder = 8
    OnClick = Button5Click
  end
end
