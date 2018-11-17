unit Unit1;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls;

type
    TForm1 = class(TForm)
    nama: TEdit;
    tanggal: TDateTimePicker;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    matakuliah: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cari: TEdit;
    Button4: TButton;
    Button5: TButton;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cariChange(Sender: TObject);
    //procedure Button6Click(Sender: TObject);
    //procedure Button6Click(Sender: TObject);
    //procedure cariChange(Sender: TObject);
    //procedure cariChange(Sender: TObject);
    //procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure bersih;
  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit2;
procedure TForm1.bersih;
begin
  nama.Text := '';
  matakuliah.Text := '';
  tanggal.date := now;
end;


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if nama.Text = '' then
begin
Showmessage('Nama masih kosong');
nama.SetFocus;
end else
if matakuliah.Text = '' then
begin
showmessage('Mata Kuliah masih kosong');
matakuliah.SetFocus;
end else
begin
  with DataModule3.ZTable1 do
begin
  Append;
  FieldByName('nama').AsString := nama.text;
  FieldByName('matkul').AsString := matakuliah.text;
  FieldByName('tgl').AsDateTime := tanggal.date;
  Post;
  Showmessage('Data berhasil di tambahkan');
  bersih;
end;
end;
end;
procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
 with DataModule3.ZTable1 do
  begin
    nama.Text := FieldByName('nama').AsString;
    matakuliah.Text := FieldByName('matkul').AsString;
    tanggal.date := FieldByName('tgl').AsDateTime;
  end;
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
 with Datamodule3.ZTable1 do
 begin
  Edit;
  FieldByName('nama').AsString := nama.Text;
  FieldByName('matkul').AsString := matakuliah.Text;
  FieldByName('tgl').AsDateTime := tanggal.date;
  Post;
  Showmessage('Data berhasil di ubah');
end;
end;
procedure TForm1.Button3Click(Sender: TObject);
begin
 With Datamodule3.ZTable1 do
  begin
  delete;
  Showmessage('Data telah dihapus');
  end;
end;
procedure TForm1.Button5Click(Sender: TObject);
begin
bersih;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
form1.hide;
form2.show
end;



procedure TForm1.cariChange(Sender: TObject);
begin
with DataModule3.ZQuery1 do
  begin
   SQL.Clear;
   SQL.Add('SELECT * from mhs WHERE nama LIKE "'+ cari.Text+'%" or matkul LIKE "'+ cari.Text+'%"');

   Active:=true;
  end;
end;


end.

