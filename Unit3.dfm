object DataModule3: TDataModule3
  OldCreateOrder = False
  Left = 680
  Top = 153
  Height = 306
  Width = 267
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'delphi1'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\Delphi\project\libmysql.dll'
    Left = 16
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from mhs')
    Params = <>
    Properties.Strings = (
      'select * from matkul')
    Left = 88
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 152
    Top = 16
  end
  object ZQuery2: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from matkul')
    Params = <>
    Left = 88
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = ZTable2
    Left = 152
    Top = 72
  end
  object ZTable1: TZTable
    Connection = ZConnection1
    Active = True
    TableName = 'mhs'
    Left = 8
    Top = 80
  end
  object ZTable2: TZTable
    Connection = ZConnection1
    SortType = stDescending
    Active = True
    TableName = 'matkul'
    Properties.Strings = (
      '')
    Left = 8
    Top = 136
  end
end
