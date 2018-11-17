unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls;

type
  TForm2 = class(TForm)
    tanggal: TDateTimePicker;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    matakuliah: TEdit;
    kelas: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure bersih;
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit1, Unit5;
procedure TForm2.bersih;
begin
  matakuliah.Text := '';
  kelas.Text := '';
  tanggal.date := now;
end;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
if matakuliah.Text = '' then
begin
Showmessage('Mata kuliah masih kosong');
matakuliah.SetFocus;
end else
if kelas.Text = '' then
begin
showmessage('Kelas masih kosong');
kelas.SetFocus;
end else
begin
  with DataModule3.ZTable2 do
begin
  Append;
  FieldByName('matlul').AsString := matakuliah.text;
  FieldByName('kelas').AsString := kelas.text;
  FieldByName('tgl').AsDateTime := tanggal.date;
  Post;
  Showmessage('Data berhasil di tambahkan');
  bersih;
end;
end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 with Datamodule3.ZTable2 do
 begin
  Edit;
  FieldByName('matlul').AsString := matakuliah.Text;
  FieldByName('kelas').AsString := kelas.Text;
  FieldByName('tgl').AsDateTime := tanggal.date;
  Post;
  Showmessage('Data berhasil di ubah');
end;
end;

procedure TForm2.DBGrid1DblClick(Sender: TObject);
begin
begin
 with DataModule3.ZTable2 do
  begin
    matakuliah.Text := FieldByName('matlul').AsString;
    kelas.Text := FieldByName('kelas').AsString;
    tanggal.date := FieldByName('tgl').AsDateTime;
  end;
end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
 With Datamodule3.ZTable2 do
  begin
   delete;
   Showmessage('Data telah dihapus');
   bersih;
   end;
end;
procedure TForm2.Button4Click(Sender: TObject);
begin
close;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
Form2.close;
Form5.show
end;

end.
