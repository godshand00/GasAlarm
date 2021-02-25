unit DataTransmissionDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDm = class(TDataModule)
    Adoc: TADOConnection;
    ProjectTm: TADOTable;
    ProjectTmID: TAutoIncField;
    ProjectTm工程编号: TWideStringField;
    ProjectTm报警编号: TWideStringField;
    ProjectTm合同号: TWideStringField;
    ProjectTm区域: TWideStringField;
    ProjectTm接卡日期: TDateTimeField;
    ProjectTm名称: TWideStringField;
    ProjectTm地址: TWideStringField;
    ProjectTm业务员: TWideStringField;
    ProjectTm联系人及电话: TWideStringField;
    ProjectTm总金额: TBCDField;
    ProjectTm切断阀金额: TBCDField;
    ProjectTm设计金额: TBCDField;
    ProjectTm市场部单位负责人: TWideStringField;
    ProjectTm用气性质: TWideStringField;
    ProjectTm供气压力: TWideStringField;
    ProjectTm报警种类: TWideStringField;
    ProjectTm燃气种类: TWideStringField;
    ProjectTm设计号: TWideStringField;
    ProjectTm备注: TWideStringField;
    ProjectTm开工日期: TDateTimeField;
    ProjectTm竣工日期: TDateTimeField;
    ProjectTm验收日期: TDateTimeField;
    ProjectTm工程状态: TWideStringField;
    ProjectTm保养生效日期: TDateTimeField;
    ProjectTm结账状态: TWideStringField;
    ProjectTm检测状态: TWideStringField;
    ProjectTm探测器数量: TIntegerField;
    ProjectTm切断阀: TWideStringField;
    ProjectTm完结标志: TBooleanField;
    ProjectTm登记日期: TDateTimeField;
    ProjectTmDs: TDataSource;
    ProjectTs: TADOTable;
    ProjectTsID: TAutoIncField;
    ProjectTs项目登记表头ID: TIntegerField;
    ProjectTs编号: TWideStringField;
    ProjectTs名称: TWideStringField;
    ProjectTs规格: TWideStringField;
    ProjectTs单位: TWideStringField;
    ProjectTs数量: TIntegerField;
    ProjectTs备注: TWideStringField;
    ProjectTs单价: TIntegerField;
    ProjectTs金额: TIntegerField;
    ProjectTsDs: TDataSource;
    TAutoList: TADOTable;
    TAutoListID: TAutoIncField;
    TAutoList类别: TWideStringField;
    TAutoList内容: TWideStringField;
    MySQL: TADOConnection;
    ProjectsT: TADOTable;
    ProjectsTid: TAutoIncField;
    ProjectsTProjectNo: TWideStringField;
    ProjectsTAlarmNo: TWideStringField;
    ProjectsTContractNo: TWideStringField;
    ProjectsTArea: TWideStringField;
    ProjectsTReceiveDate: TDateField;
    ProjectsTDesignNo: TWideStringField;
    ProjectsTProjectName: TWideStringField;
    ProjectsTAddress: TWideStringField;
    ProjectsTProjectContact: TWideStringField;
    ProjectsTProjectContactPhone: TWideStringField;
    ProjectsTBoroughs: TWideStringField;
    ProjectsTTradeArea: TWideStringField;
    ProjectsTSalesman: TWideStringField;
    ProjectsTHeadofMarketing: TWideStringField;
    ProjectsTAmount: TFloatField;
    ProjectsTAmoutValve: TFloatField;
    ProjectsTAmoutDesign: TFloatField;
    ProjectsTDetectorNum: TIntegerField;
    ProjectsTValveModel: TWideStringField;
    ProjectsTRemark: TWideStringField;
    ProjectsTAttribute: TWideStringField;
    ProjectsTAlarmGrade: TWideStringField;
    ProjectsTGasSource: TWideStringField;
    ProjectsTGasPressure: TWideStringField;
    ProjectsTProjectStatus: TWideStringField;
    ProjectsTAccountsStatus: TWideStringField;
    ProjectsTCheckStatus: TWideStringField;
    ProjectsTCommencementDate: TDateField;
    ProjectsTCompletionDate: TDateField;
    ProjectsTAcceptanceDate: TDateField;
    ProjectsTMaintenanceStartDate: TDateField;
    ProjectsTBuilders: TWideStringField;
    ProjectsTEndSign: TSmallintField;
    ProjectsTRegDate: TDateField;
    PlanM: TADOTable;
    PlanMid: TAutoIncField;
    PlanMProjectsID: TIntegerField;
    PlanMProductNo: TWideStringField;
    PlanMProductName: TWideStringField;
    PlanMProductModel: TWideStringField;
    PlanMUnit: TWideStringField;
    PlanMQuantity: TFloatField;
    PlanMPrice: TFloatField;
    PlanMAmount: TFloatField;
    PlanMRemark: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
