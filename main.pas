unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, Spin;

type
  TMainForm = class(TForm)
    SaveCurrentButton: TButton;
    TeamSelect: TComboBox;
    TeamMemberImg1: TImage;
    TeamMemberImg2: TImage;
    TeamMemberImg3: TImage;
    TeamMemberImg4: TImage;
    TeamMemberImg5: TImage;
    CharacteristicsEdit1: TSpinEdit;
    CharacteristicsEdit2: TSpinEdit;
    CharacteristicsEdit3: TSpinEdit;
    CharacteristicsEdit4: TSpinEdit;
    CharacteristicsEdit5: TSpinEdit;
    CharacteristicsEdit6: TSpinEdit;
    CharacteristicsEdit7: TSpinEdit;
    CharacteristicsEdit8: TSpinEdit;
    CharacteristicsEdit9: TSpinEdit;
    CharacteristicsEdit10: TSpinEdit;
    CharacteristicsEdit11: TSpinEdit;
    CharacteristicsEdit12: TSpinEdit;
    CharacteristicsEdit13: TSpinEdit;
    CharacteristicsEdit14: TSpinEdit;
    CharacteristicsEdit15: TSpinEdit;
    CharacteristicsEdit16: TSpinEdit;
    CharacteristicsEdit17: TSpinEdit;
    CharacteristicsEdit18: TSpinEdit;
    CharacteristicsEdit19: TSpinEdit;
    CharacteristicsEdit20: TSpinEdit;
    HPLabel: TLabel;
    POWERLabel: TLabel;
    SPEEDLabel: TLabel;
    DEFENSELabel: TLabel;
    CharactersGroupBox: TGroupBox;
    OpenRom: TOpenDialog;
    LoadRomButton: TButton;
    ActionsGroupBox: TGroupBox;
    TeamLabel: TLabel;
    procedure SaveCurrentButtonClick(Sender: TObject);
    procedure TeamSelectSelect(Sender: TObject);
    procedure LoadRomButtonClick(Sender: TObject);
    procedure CharacteristicsEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  MyComponent, mc: TComponent;
  f: File of Byte;
  CharacteristicsArray: array[0..19] of byte;
  team_stats_array: array[0..4] of array[0..19] of Byte;
  rom_file_path: string;
const
  team: array[0..4] of String = ('$1ac85', '$1ac99', '$1acad', '$1acc1', '$1acd5');
implementation

procedure SetStats();
var
  img_path, work_directory: string;
  i: ShortInt;
begin
  for i:=1 to 20 do
  begin
    MyComponent:=MainForm.FindComponent('CharacteristicsEdit'+IntToStr(i));
    TSpinEdit(MyComponent).Value:=team_stats_array[MainForm.TeamSelect.ItemIndex][i-1];
  end;

  work_directory:=extractfilepath(paramstr(0)) + 'img\';
  for i:=1 to 5 do
  begin
    MyComponent:=MainForm.FindComponent('TeamMemberImg'+IntToStr(i));
    img_path:=work_directory + AnsiLowerCase(MainForm.TeamSelect.Text) + '\0'+IntToStr(i)+'.bmp';
    TImage(MyComponent).Picture.LoadFromFile(img_path);
  end;
end;

procedure LoadCharacteristics();
var
  i: ShortInt;
begin
  Assignfile(f, rom_file_path);
  FileMode:=fmOpenRead;
  Reset(f);
  Seek(f, StrToInt(team[MainForm.TeamSelect.ItemIndex]));
  for i:=0 to 4 do
    BlockRead(f, team_stats_array[i], 20);

  CloseFile(f);
end;

{$R *.dfm}

procedure TMainForm.SaveCurrentButtonClick(Sender: TObject);
begin
  Assignfile(f, rom_file_path);
  FileMode:=fmOpenWrite;
  Reset(f);
  Seek(f, StrToInt(team[TeamSelect.ItemIndex]));
  BlockWrite(f, team_stats_array[TeamSelect.ItemIndex], 20);
  CloseFile(f);
end;

procedure TMainForm.TeamSelectSelect(Sender: TObject);
begin
  SetStats();
end;

procedure TMainForm.LoadRomButtonClick(Sender: TObject);
var
  i: ShortInt;
begin
  if OpenRom.Execute then
    begin
      rom_file_path:=OpenRom.FileName;
      TeamSelect.Enabled:=True;
      SaveCurrentButton.Enabled:=True;
      for i:=1 to 20 do
      begin
        MyComponent:=FindComponent('CharacteristicsEdit'+IntToStr(i));
        TSpinEdit(MyComponent).Enabled:=True;
      end;
      LoadCharacteristics();
      SetStats();
    end
end;

procedure TMainForm.CharacteristicsEdit1Change(Sender: TObject);
begin
  if (Sender as TSpinEdit).Text <> '' then
    team_stats_array[TeamSelect.ItemIndex][(Sender as TSpinEdit).TabOrder]:=(Sender as TSpinEdit).Value;
end;

end.
