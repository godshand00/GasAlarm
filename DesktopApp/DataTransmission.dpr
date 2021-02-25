program DataTransmission;

uses
  Vcl.Forms,
  DataTransmissionDM in 'DataTransmissionDM.pas' {Dm: TDataModule},
  DataTransmissionForm in 'DataTransmissionForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
