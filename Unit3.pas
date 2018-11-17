unit Unit3;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
   ZAbstractConnection, ZConnection, ZAbstractTable;

type
  TDataModule3 = class(TDataModule)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    ZQuery2: TZQuery;
    DataSource2: TDataSource;
    ZTable1: TZTable;
    ZTable2: TZTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

uses Unit1, Unit2, Unit4;

{$R *.dfm}

end.
