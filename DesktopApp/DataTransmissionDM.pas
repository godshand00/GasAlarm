unit DataTransmissionDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDm = class(TDataModule)
    Adoc: TADOConnection;
    ProjectTm: TADOTable;
    ProjectTmID: TAutoIncField;
    ProjectTm���̱��: TWideStringField;
    ProjectTm�������: TWideStringField;
    ProjectTm��ͬ��: TWideStringField;
    ProjectTm����: TWideStringField;
    ProjectTm�ӿ�����: TDateTimeField;
    ProjectTm����: TWideStringField;
    ProjectTm��ַ: TWideStringField;
    ProjectTmҵ��Ա: TWideStringField;
    ProjectTm��ϵ�˼��绰: TWideStringField;
    ProjectTm�ܽ��: TBCDField;
    ProjectTm�жϷ����: TBCDField;
    ProjectTm��ƽ��: TBCDField;
    ProjectTm�г�����λ������: TWideStringField;
    ProjectTm��������: TWideStringField;
    ProjectTm����ѹ��: TWideStringField;
    ProjectTm��������: TWideStringField;
    ProjectTmȼ������: TWideStringField;
    ProjectTm��ƺ�: TWideStringField;
    ProjectTm��ע: TWideStringField;
    ProjectTm��������: TDateTimeField;
    ProjectTm��������: TDateTimeField;
    ProjectTm��������: TDateTimeField;
    ProjectTm����״̬: TWideStringField;
    ProjectTm������Ч����: TDateTimeField;
    ProjectTm����״̬: TWideStringField;
    ProjectTm���״̬: TWideStringField;
    ProjectTm̽��������: TIntegerField;
    ProjectTm�жϷ�: TWideStringField;
    ProjectTm����־: TBooleanField;
    ProjectTm�Ǽ�����: TDateTimeField;
    ProjectTmDs: TDataSource;
    ProjectTs: TADOTable;
    ProjectTsID: TAutoIncField;
    ProjectTs��Ŀ�ǼǱ�ͷID: TIntegerField;
    ProjectTs���: TWideStringField;
    ProjectTs����: TWideStringField;
    ProjectTs���: TWideStringField;
    ProjectTs��λ: TWideStringField;
    ProjectTs����: TIntegerField;
    ProjectTs��ע: TWideStringField;
    ProjectTs����: TIntegerField;
    ProjectTs���: TIntegerField;
    ProjectTsDs: TDataSource;
    TAutoList: TADOTable;
    TAutoListID: TAutoIncField;
    TAutoList���: TWideStringField;
    TAutoList����: TWideStringField;
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
