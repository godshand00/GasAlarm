unit DataTransmissionForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  DataTransmissionDM;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Dm.ProjectsT.Open;
  Dm.ProjectTm.Open;
  Dm.ProjectsT.First;

  while Not Dm.ProjectsT.Eof do
  begin
    Dm.ProjectsT.Delete;
  end;

  Dm.ProjectTm.First;
  while Not Dm.ProjectTm.Eof do
  begin
     Dm.ProjectsT.Append;
     Dm.ProjectsT.FieldValues['id']:= Dm.ProjectTm.FieldValues['ID'];
     Dm.ProjectsT.FieldValues['ProjectNo']:= Dm.ProjectTm.FieldValues['���̱��'];
     Dm.ProjectsT.FieldValues['AlarmNo']:= Dm.ProjectTm.FieldValues['�������'];
     Dm.ProjectsT.FieldValues['ContractNo']:= Dm.ProjectTm.FieldValues['��ͬ��'];
     Dm.ProjectsT.FieldValues['Area']:= Dm.ProjectTm.FieldValues['����'];
     Dm.ProjectsT.FieldValues['ReceiveDate']:= Dm.ProjectTm.FieldValues['�ӿ�����'];
     Dm.ProjectsT.FieldValues['DesignNo']:= Dm.ProjectTm.FieldValues['��ƺ�'];
     Dm.ProjectsT.FieldValues['ProjectName']:= Dm.ProjectTm.FieldValues['����'];
     Dm.ProjectsT.FieldValues['Address']:= Dm.ProjectTm.FieldValues['��ƺ�'];
     Dm.ProjectsT.FieldValues['ProjectContact']:= Dm.ProjectTm.FieldValues['��ϵ�˼��绰'];
     //Dm.ProjectsT.FieldValues['ProjectContactPhone']:= Dm.ProjectTm.FieldValues[''];
     //Dm.ProjectsT.FieldValues['Boroughs']:= Dm.ProjectTm.FieldValues[''];
     //Dm.ProjectsT.FieldValues['TradeArea']:= Dm.ProjectTm.FieldValues['����'];
     Dm.ProjectsT.FieldValues['Salesman']:= Dm.ProjectTm.FieldValues['ҵ��Ա'];
     Dm.ProjectsT.FieldValues['HeadofMarketing']:= Dm.ProjectTm.FieldValues['�г�����λ������'];
     Dm.ProjectsT.FieldValues['Amount']:= Dm.ProjectTm.FieldValues['�ܽ��'];
     Dm.ProjectsT.FieldValues['AmoutValve']:= Dm.ProjectTm.FieldValues['�жϷ����'];
     Dm.ProjectsT.FieldValues['AmoutDesign']:= Dm.ProjectTm.FieldValues['�жϷ����'];
     Dm.ProjectsT.FieldValues['DetectorNum']:= Dm.ProjectTm.FieldValues['̽��������'];
     Dm.ProjectsT.FieldValues['ValveModel']:= Dm.ProjectTm.FieldValues['�жϷ�'];
     Dm.ProjectsT.FieldValues['Remark']:= Dm.ProjectTm.FieldValues['��ע'];
     Dm.ProjectsT.FieldValues['Attribute']:= Dm.ProjectTm.FieldValues['��������'];
     Dm.ProjectsT.FieldValues['AlarmGrade']:= Dm.ProjectTm.FieldValues['��������'];
     Dm.ProjectsT.FieldValues['GasSource']:= Dm.ProjectTm.FieldValues['ȼ������'];
     Dm.ProjectsT.FieldValues['GasPressure']:= Dm.ProjectTm.FieldValues['����ѹ��'];
     Dm.ProjectsT.FieldValues['ProjectStatus']:= Dm.ProjectTm.FieldValues['����״̬'];
     Dm.ProjectsT.FieldValues['AccountsStatus']:= Dm.ProjectTm.FieldValues['����״̬'];
     Dm.ProjectsT.FieldValues['CheckStatus']:= Dm.ProjectTm.FieldValues['���״̬'];
     Dm.ProjectsT.FieldValues['CommencementDate']:= Dm.ProjectTm.FieldValues['��������'];
     Dm.ProjectsT.FieldValues['CompletionDate']:= Dm.ProjectTm.FieldValues['��������'];
     Dm.ProjectsT.FieldValues['AcceptanceDate']:= Dm.ProjectTm.FieldValues['��������'];
     Dm.ProjectsT.FieldValues['MaintenanceStartDate']:= Dm.ProjectTm.FieldValues['������Ч����'];
     //Dm.ProjectsT.FieldValues['Builders']:= Dm.ProjectTm.FieldValues[''];
     Dm.ProjectsT.FieldValues['EndSign']:= Dm.ProjectTm.FieldValues['����־'];
     Dm.ProjectsT.FieldValues['RegDate']:= Dm.ProjectTm.FieldValues['�Ǽ�����'];
     Dm.ProjectsT.Post;

     Dm.ProjectTm.Next;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  a, b: TAdoTable;
begin
  a:= Dm.ProjectTs;
  b:= Dm.PlanM;
  a.Open;
  b.Open;

  a.First;
  while Not a.Eof do
  begin
    b.Append;
    b.FieldValues['id']:= a.FieldValues['ID'];
    b.FieldValues['ProjectsID']:= a.FieldValues['��Ŀ�ǼǱ�ͷID'];
    b.FieldValues['ProductNo']:= a.FieldValues['���'];
    b.FieldValues['ProductName']:= a.FieldValues['����'];
    b.FieldValues['ProductModel']:= a.FieldValues['���'];
    b.FieldValues['Unit']:= a.FieldValues['���'];
    b.FieldValues['Quantity']:= a.FieldValues['����'];
    b.FieldValues['Price']:= a.FieldValues['����'];
    b.FieldValues['Amount']:= a.FieldValues['���'];
    b.FieldValues['Remark']:= a.FieldValues['��ע'];
    b.Post;

    a.Next;
  end;

  a.Close;
  b.close;

end;

end.
