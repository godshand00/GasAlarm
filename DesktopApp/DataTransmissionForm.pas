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
     Dm.ProjectsT.FieldValues['ProjectNo']:= Dm.ProjectTm.FieldValues['工程编号'];
     Dm.ProjectsT.FieldValues['AlarmNo']:= Dm.ProjectTm.FieldValues['报警编号'];
     Dm.ProjectsT.FieldValues['ContractNo']:= Dm.ProjectTm.FieldValues['合同号'];
     Dm.ProjectsT.FieldValues['Area']:= Dm.ProjectTm.FieldValues['区域'];
     Dm.ProjectsT.FieldValues['ReceiveDate']:= Dm.ProjectTm.FieldValues['接卡日期'];
     Dm.ProjectsT.FieldValues['DesignNo']:= Dm.ProjectTm.FieldValues['设计号'];
     Dm.ProjectsT.FieldValues['ProjectName']:= Dm.ProjectTm.FieldValues['名称'];
     Dm.ProjectsT.FieldValues['Address']:= Dm.ProjectTm.FieldValues['设计号'];
     Dm.ProjectsT.FieldValues['ProjectContact']:= Dm.ProjectTm.FieldValues['联系人及电话'];
     //Dm.ProjectsT.FieldValues['ProjectContactPhone']:= Dm.ProjectTm.FieldValues[''];
     //Dm.ProjectsT.FieldValues['Boroughs']:= Dm.ProjectTm.FieldValues[''];
     //Dm.ProjectsT.FieldValues['TradeArea']:= Dm.ProjectTm.FieldValues['名称'];
     Dm.ProjectsT.FieldValues['Salesman']:= Dm.ProjectTm.FieldValues['业务员'];
     Dm.ProjectsT.FieldValues['HeadofMarketing']:= Dm.ProjectTm.FieldValues['市场部单位负责人'];
     Dm.ProjectsT.FieldValues['Amount']:= Dm.ProjectTm.FieldValues['总金额'];
     Dm.ProjectsT.FieldValues['AmoutValve']:= Dm.ProjectTm.FieldValues['切断阀金额'];
     Dm.ProjectsT.FieldValues['AmoutDesign']:= Dm.ProjectTm.FieldValues['切断阀金额'];
     Dm.ProjectsT.FieldValues['DetectorNum']:= Dm.ProjectTm.FieldValues['探测器数量'];
     Dm.ProjectsT.FieldValues['ValveModel']:= Dm.ProjectTm.FieldValues['切断阀'];
     Dm.ProjectsT.FieldValues['Remark']:= Dm.ProjectTm.FieldValues['备注'];
     Dm.ProjectsT.FieldValues['Attribute']:= Dm.ProjectTm.FieldValues['用气性质'];
     Dm.ProjectsT.FieldValues['AlarmGrade']:= Dm.ProjectTm.FieldValues['报警种类'];
     Dm.ProjectsT.FieldValues['GasSource']:= Dm.ProjectTm.FieldValues['燃气种类'];
     Dm.ProjectsT.FieldValues['GasPressure']:= Dm.ProjectTm.FieldValues['供气压力'];
     Dm.ProjectsT.FieldValues['ProjectStatus']:= Dm.ProjectTm.FieldValues['工程状态'];
     Dm.ProjectsT.FieldValues['AccountsStatus']:= Dm.ProjectTm.FieldValues['结账状态'];
     Dm.ProjectsT.FieldValues['CheckStatus']:= Dm.ProjectTm.FieldValues['检测状态'];
     Dm.ProjectsT.FieldValues['CommencementDate']:= Dm.ProjectTm.FieldValues['开工日期'];
     Dm.ProjectsT.FieldValues['CompletionDate']:= Dm.ProjectTm.FieldValues['竣工日期'];
     Dm.ProjectsT.FieldValues['AcceptanceDate']:= Dm.ProjectTm.FieldValues['验收日期'];
     Dm.ProjectsT.FieldValues['MaintenanceStartDate']:= Dm.ProjectTm.FieldValues['保养生效日期'];
     //Dm.ProjectsT.FieldValues['Builders']:= Dm.ProjectTm.FieldValues[''];
     Dm.ProjectsT.FieldValues['EndSign']:= Dm.ProjectTm.FieldValues['完结标志'];
     Dm.ProjectsT.FieldValues['RegDate']:= Dm.ProjectTm.FieldValues['登记日期'];
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
    b.FieldValues['ProjectsID']:= a.FieldValues['项目登记表头ID'];
    b.FieldValues['ProductNo']:= a.FieldValues['编号'];
    b.FieldValues['ProductName']:= a.FieldValues['名称'];
    b.FieldValues['ProductModel']:= a.FieldValues['规格'];
    b.FieldValues['Unit']:= a.FieldValues['规格'];
    b.FieldValues['Quantity']:= a.FieldValues['数量'];
    b.FieldValues['Price']:= a.FieldValues['单价'];
    b.FieldValues['Amount']:= a.FieldValues['金额'];
    b.FieldValues['Remark']:= a.FieldValues['备注'];
    b.Post;

    a.Next;
  end;

  a.Close;
  b.close;

end;

end.
