object MainForm: TMainForm
  Left = 389
  Top = 139
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Bikkuri Editor'
  ClientHeight = 353
  ClientWidth = 281
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
  object CharactersGroupBox: TGroupBox
    Left = 8
    Top = 8
    Width = 265
    Height = 225
    Caption = 'Characters'
    TabOrder = 0
    object TeamMemberImg2: TImage
      Left = 8
      Top = 64
      Width = 26
      Height = 31
      AutoSize = True
      Transparent = True
    end
    object TeamMemberImg1: TImage
      Left = 8
      Top = 24
      Width = 26
      Height = 31
      Transparent = True
    end
    object TeamMemberImg3: TImage
      Left = 8
      Top = 104
      Width = 26
      Height = 31
      AutoSize = True
      Transparent = True
    end
    object TeamMemberImg4: TImage
      Left = 8
      Top = 144
      Width = 26
      Height = 31
      AutoSize = True
      Transparent = True
    end
    object TeamMemberImg5: TImage
      Left = 8
      Top = 186
      Width = 26
      Height = 31
      AutoSize = True
      Transparent = True
    end
    object HPLabel: TLabel
      Left = 40
      Top = 16
      Width = 15
      Height = 13
      Caption = 'HP'
    end
    object POWERLabel: TLabel
      Left = 152
      Top = 16
      Width = 41
      Height = 13
      Caption = 'POWER'
    end
    object SPEEDLabel: TLabel
      Left = 96
      Top = 16
      Width = 36
      Height = 13
      Caption = 'SPEED'
    end
    object DEFENSELabel: TLabel
      Left = 208
      Top = 16
      Width = 50
      Height = 13
      Caption = 'DEFENSE'
    end
    object CharacteristicsEdit1: TSpinEdit
      Left = 40
      Top = 32
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 0
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit2: TSpinEdit
      Left = 96
      Top = 32
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 1
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit3: TSpinEdit
      Left = 152
      Top = 32
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 2
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit4: TSpinEdit
      Left = 208
      Top = 32
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 3
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit5: TSpinEdit
      Left = 40
      Top = 72
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 4
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit6: TSpinEdit
      Left = 96
      Top = 72
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 5
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit7: TSpinEdit
      Left = 152
      Top = 72
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 6
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit8: TSpinEdit
      Left = 208
      Top = 72
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 7
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit9: TSpinEdit
      Left = 40
      Top = 112
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 8
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit10: TSpinEdit
      Left = 96
      Top = 112
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 9
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit11: TSpinEdit
      Left = 152
      Top = 112
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 10
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit12: TSpinEdit
      Left = 208
      Top = 112
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 11
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit13: TSpinEdit
      Left = 40
      Top = 152
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 12
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit14: TSpinEdit
      Left = 96
      Top = 152
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 13
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit15: TSpinEdit
      Left = 152
      Top = 152
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 14
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit16: TSpinEdit
      Left = 208
      Top = 152
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 15
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit17: TSpinEdit
      Left = 40
      Top = 195
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 16
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit18: TSpinEdit
      Left = 96
      Top = 195
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 17
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit19: TSpinEdit
      Left = 152
      Top = 195
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 18
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
    object CharacteristicsEdit20: TSpinEdit
      Left = 208
      Top = 195
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 255
      MinValue = 0
      TabOrder = 19
      Value = 0
      OnChange = CharacteristicsEdit1Change
    end
  end
  object ActionsGroupBox: TGroupBox
    Left = 8
    Top = 248
    Width = 265
    Height = 97
    Caption = 'Actions'
    TabOrder = 1
    object TeamLabel: TLabel
      Left = 8
      Top = 16
      Width = 63
      Height = 13
      Caption = 'Select Team:'
    end
    object LoadRomButton: TButton
      Left = 6
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Load Rom'
      TabOrder = 0
      OnClick = LoadRomButtonClick
    end
    object SaveCurrentButton: TButton
      Left = 182
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Save Current'
      Enabled = False
      TabOrder = 1
      OnClick = SaveCurrentButtonClick
    end
    object TeamSelect: TComboBox
      Left = 8
      Top = 36
      Width = 249
      Height = 21
      Style = csDropDownList
      Enabled = False
      ImeName = 'Russian'
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Nekketsu'
      OnSelect = TeamSelectSelect
      Items.Strings = (
        'Nekketsu'
        'Hanazono'
        'Reihou'
        'Rengou'
        'Oklahoma')
    end
  end
  object OpenRom: TOpenDialog
    Filter = 'NES Rom (*.nes)|*.nes'
    Left = 344
    Top = 24
  end
end
