unit UfrmMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms,
  LYTray, Menus, StdCtrls, Buttons, ADODB,
  ActnList, AppEvnts, ComCtrls, ToolWin, ExtCtrls,
  registry,inifiles,Dialogs,
  StrUtils, DB,ComObj,Variants, CPort, Spin;

type
  TfrmMain = class(TForm)
    LYTray1: TLYTray;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton2: TToolButton;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    ToolButton5: TToolButton;
    ToolButton9: TToolButton;
    OpenDialog1: TOpenDialog;
    ComPort1: TComPort;
    Timer1: TTimer;
    SaveDialog1: TSaveDialog;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    Edit56: TEdit;
    Edit57: TEdit;
    Edit58: TEdit;
    Edit59: TEdit;
    Edit60: TEdit;
    Edit61: TEdit;
    Edit62: TEdit;
    Edit63: TEdit;
    Edit64: TEdit;
    Edit65: TEdit;
    Edit66: TEdit;
    Edit67: TEdit;
    Edit68: TEdit;
    Edit69: TEdit;
    Edit70: TEdit;
    Edit71: TEdit;
    Edit72: TEdit;
    Edit73: TEdit;
    Edit74: TEdit;
    Edit75: TEdit;
    Edit76: TEdit;
    Edit77: TEdit;
    Edit78: TEdit;
    Edit79: TEdit;
    Edit80: TEdit;
    Edit81: TEdit;
    Edit82: TEdit;
    Edit83: TEdit;
    Edit84: TEdit;
    Edit85: TEdit;
    Edit86: TEdit;
    Edit87: TEdit;
    Edit88: TEdit;
    Edit89: TEdit;
    Edit90: TEdit;
    Edit91: TEdit;
    Edit92: TEdit;
    Edit93: TEdit;
    Edit94: TEdit;
    Edit95: TEdit;
    Edit96: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    procedure N3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure ApplicationEvents1Activate(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ComPort1AfterOpen(Sender: TObject);
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure WMSyscommand(var message:TWMMouse);message WM_SYSCOMMAND;
    procedure UpdateConfig;{配置文件生效}
    function LoadInputPassDll:boolean;
    function MakeDBConn:boolean;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses ucommfunction;

const
  sCryptSeed='lc';//加解密种子
  sCONNECTDEVELOP='错误!请与开发商联系!' ;
  IniSection='Setup';

var
  ConnectString:string;
  GroupName:string;//
  SpecType:string ;//
  SpecStatus:string ;//
  CombinID:string;//
  LisFormCaption:string;//
  QuaContSpecNoG:string;
  QuaContSpecNo:string;
  QuaContSpecNoD:string;
  EquipChar:string;
  ifRecLog:boolean;//是否记录调试日志

  RFM:STRING;       //返回数据
  hnd:integer;
  bRegister:boolean;

{$R *.dfm}

function ifRegister:boolean;
var
  HDSn,RegisterNum,EnHDSn:string;
  configini:tinifile;
  pEnHDSn:Pchar;
begin
  result:=false;
  
  HDSn:=GetHDSn('C:\')+'-'+GetHDSn('D:\')+'-'+ChangeFileExt(ExtractFileName(Application.ExeName),'');

  CONFIGINI:=TINIFILE.Create(ChangeFileExt(Application.ExeName,'.ini'));
  RegisterNum:=CONFIGINI.ReadString(IniSection,'RegisterNum','');
  CONFIGINI.Free;
  pEnHDSn:=EnCryptStr(Pchar(HDSn),sCryptSeed);
  EnHDSn:=StrPas(pEnHDSn);

  if Uppercase(EnHDSn)=Uppercase(RegisterNum) then result:=true;

  if not result then messagedlg('对不起,您没有注册或注册码错误,请注册!',mtinformation,[mbok],0);
end;

function GetConnectString:string;
var
  Ini:tinifile;
  userid, password, datasource, initialcatalog: string;
  ifIntegrated:boolean;//是否集成登录模式

  pInStr,pDeStr:Pchar;
  i:integer;
begin
  result:='';
  
  Ini := tinifile.Create(ChangeFileExt(Application.ExeName,'.INI'));
  datasource := Ini.ReadString('连接数据库', '服务器', '');
  initialcatalog := Ini.ReadString('连接数据库', '数据库', '');
  ifIntegrated:=ini.ReadBool('连接数据库','集成登录模式',false);
  userid := Ini.ReadString('连接数据库', '用户', '');
  password := Ini.ReadString('连接数据库', '口令', '107DFC967CDCFAAF');
  Ini.Free;
  //======解密password
  pInStr:=pchar(password);
  pDeStr:=DeCryptStr(pInStr,sCryptSeed);
  setlength(password,length(pDeStr));
  for i :=1  to length(pDeStr) do password[i]:=pDeStr[i-1];
  //==========

  result := result + 'user id=' + UserID + ';';
  result := result + 'password=' + Password + ';';
  result := result + 'data source=' + datasource + ';';
  result := result + 'Initial Catalog=' + initialcatalog + ';';
  result := result + 'provider=' + 'SQLOLEDB.1' + ';';
  if ifIntegrated then
    result := result + 'Integrated Security=SSPI;';
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  ctext        :string;
  reg          :tregistry;
begin
  ConnectString:=GetConnectString;
  
  UpdateConfig;
  if ifRegister then bRegister:=true else bRegister:=false;  

  Caption:='数据接收服务'+ExtractFileName(Application.ExeName);
  lytray1.Hint:='数据接收服务'+ExtractFileName(Application.ExeName);

//=============================初始化密码=====================================//
    reg:=tregistry.Create;
    reg.RootKey:=HKEY_CURRENT_USER;
    reg.OpenKey('\sunyear',true);
    ctext:=reg.ReadString('pass');
    if ctext='' then
    begin
        reg:=tregistry.Create;
        reg.RootKey:=HKEY_CURRENT_USER;
        reg.OpenKey('\sunyear',true);
        reg.WriteString('pass','JIHONM{');
        //MessageBox(application.Handle,pchar('感谢您使用智能监控系统，'+chr(13)+'请记住初始化密码：'+'lc'),
        //            '系统提示',MB_OK+MB_ICONinformation);     //WARNING
    end;
    reg.CloseKey;
    reg.Free;
//============================================================================//
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if LoadInputPassDll then action:=cafree else action:=caNone;
end;

procedure TfrmMain.N3Click(Sender: TObject);
begin
    if not LoadInputPassDll then exit;
    application.Terminate;
end;

procedure TfrmMain.N1Click(Sender: TObject);
begin
  show;
end;

procedure TfrmMain.ApplicationEvents1Activate(Sender: TObject);
begin
  hide;
end;

procedure TfrmMain.WMSyscommand(var message: TWMMouse);
begin
  inherited;
  if message.Keys=SC_MINIMIZE then hide;
  message.Result:=-1;
end;

procedure TfrmMain.ToolButton7Click(Sender: TObject);
begin
  if MakeDBConn then ConnectString:=GetConnectString;
end;

procedure TfrmMain.UpdateConfig;
var
  INI:tinifile;
  CommName,BaudRate,DataBit,StopBit,ParityBit:string;
  autorun:boolean;
begin
  ini:=TINIFILE.Create(ChangeFileExt(Application.ExeName,'.ini'));

  CommName:=ini.ReadString(IniSection,'串口选择','COM1');
  BaudRate:=ini.ReadString(IniSection,'波特率','9600');
  DataBit:=ini.ReadString(IniSection,'数据位','8');
  StopBit:=ini.ReadString(IniSection,'停止位','1');
  ParityBit:=ini.ReadString(IniSection,'校验位','None');
  autorun:=ini.readBool(IniSection,'开机自动运行',false);
  ifRecLog:=ini.readBool(IniSection,'调试日志',false);

  GroupName:=trim(ini.ReadString(IniSection,'工作组',''));
  EquipChar:=trim(uppercase(ini.ReadString(IniSection,'仪器字母','')));//读出来是大写就万无一失了
  SpecType:=ini.ReadString(IniSection,'默认样本类型','');
  SpecStatus:=ini.ReadString(IniSection,'默认样本状态','');
  CombinID:=ini.ReadString(IniSection,'组合项目代码','');

  LisFormCaption:=ini.ReadString(IniSection,'检验系统窗体标题','');

  QuaContSpecNoG:=ini.ReadString(IniSection,'高值质控联机号','9999');
  QuaContSpecNo:=ini.ReadString(IniSection,'常值质控联机号','9998');
  QuaContSpecNoD:=ini.ReadString(IniSection,'低值质控联机号','9997');

  ini.Free;

  OperateLinkFile(application.ExeName,'\'+ChangeFileExt(ExtractFileName(Application.ExeName),'.lnk'),15,autorun);
  ComPort1.Close;
  ComPort1.Port:=CommName;
  if BaudRate='1200' then
    ComPort1.BaudRate:=br1200
    else if BaudRate='2400' then
      ComPort1.BaudRate:=br2400
    else if BaudRate='4800' then
      ComPort1.BaudRate:=br4800
      else if BaudRate='9600' then
        ComPort1.BaudRate:=br9600
        else if BaudRate='19200' then
          ComPort1.BaudRate:=br19200
          else ComPort1.BaudRate:=br9600;
  if DataBit='5' then
    ComPort1.DataBits:=dbFive
    else if DataBit='6' then
      ComPort1.DataBits:=dbSix
      else if DataBit='7' then
        ComPort1.DataBits:=dbSeven
        else if DataBit='8' then
          ComPort1.DataBits:=dbEight
          else ComPort1.DataBits:=dbEight;
  if StopBit='1' then
    ComPort1.StopBits:=sbOneStopBit
    else if StopBit='2' then
      ComPort1.StopBits:=sbTwoStopBits
      else if StopBit='1.5' then
        ComPort1.StopBits:=sbOne5StopBits
        else ComPort1.StopBits:=sbOneStopBit;
  if ParityBit='None' then
    ComPort1.Parity.Bits:=prNone
    else if ParityBit='Odd' then
      ComPort1.Parity.Bits:=prOdd
      else if ParityBit='Even' then
        ComPort1.Parity.Bits:=prEven
        else if ParityBit='Mark' then
          ComPort1.Parity.Bits:=prMark
          else if ParityBit='Space' then
            ComPort1.Parity.Bits:=prSpace
            else ComPort1.Parity.Bits:=prNone;
  try
    ComPort1.Open;
  except
    showmessage('串口'+ComPort1.Port+'打开失败!');
  end;
end;

function TfrmMain.LoadInputPassDll: boolean;
TYPE
    TDLLFUNC=FUNCTION:boolean;
VAR
    HLIB:THANDLE;
    DLLFUNC:TDLLFUNC;
    PassFlag:boolean;
begin
    result:=false;
    HLIB:=LOADLIBRARY('OnOffLogin.dll');
    IF HLIB=0 THEN BEGIN SHOWMESSAGE(sCONNECTDEVELOP);EXIT; END;
    DLLFUNC:=TDLLFUNC(GETPROCADDRESS(HLIB,'showfrmonofflogin'));
    IF @DLLFUNC=NIL THEN BEGIN SHOWMESSAGE(sCONNECTDEVELOP);EXIT; END;
    PassFlag:=DLLFUNC;
    FREELIBRARY(HLIB);
    result:=passflag;
end;

function TfrmMain.MakeDBConn:boolean;
var
  ADOConn:TADOConnection;
  newconnstr,ss: string;
  Label labReadIni;
begin
  result:=false;

  labReadIni:
  newconnstr := GetConnectString;
  
  ADOConn:=TADOConnection.Create(nil);
  ADOConn.Connected := false;
  ADOConn.ConnectionString := newconnstr;
  try
    ADOConn.Connected := true;
    result:=true;
  except
  end;
  ADOConn.Close;
  ADOConn.Free;
  if not result then
  begin
    ss:='服务器'+#2+'Edit'+#2+#2+'0'+#2+#2+#3+
        '数据库'+#2+'Edit'+#2+#2+'0'+#2+#2+#3+
        '集成登录模式'+#2+'CheckListBox'+#2+#2+'0'+#2+#2+#3+
        '用户'+#2+'Edit'+#2+#2+'0'+#2+#2+#3+
        '口令'+#2+'Edit'+#2+#2+'0'+#2+#2+'1';
    if ShowOptionForm('连接数据库','连接数据库',Pchar(ss),Pchar(ChangeFileExt(Application.ExeName,'.ini'))) then
      goto labReadIni else application.Terminate;
  end;
end;

procedure TfrmMain.ToolButton2Click(Sender: TObject);
var
  ss:string;
begin
  if LoadInputPassDll then
  begin
    ss:='串口选择'+#2+'Combobox'+#2+'COM1'+#13+'COM2'+#13+'COM3'+#13+'COM4'+#2+'0'+#2+#2+#3+
      '波特率'+#2+'Combobox'+#2+'19200'+#13+'9600'+#13+'4800'+#13+'2400'+#13+'1200'+#2+'0'+#2+#2+#3+
      '数据位'+#2+'Combobox'+#2+'8'+#13+'7'+#13+'6'+#13+'5'+#2+'0'+#2+#2+#3+
      '停止位'+#2+'Combobox'+#2+'1'+#13+'1.5'+#13+'2'+#2+'0'+#2+#2+#3+
      '校验位'+#2+'Combobox'+#2+'None'+#13+'Even'+#13+'Odd'+#13+'Mark'+#13+'Space'+#2+'0'+#2+#2+#3+
      '工作组'+#2+'Edit'+#2+#2+'1'+#2+#2+#3+
      '仪器字母'+#2+'Edit'+#2+#2+'1'+#2+#2+#3+
      '检验系统窗体标题'+#2+'Edit'+#2+#2+'1'+#2+#2+#3+
      '默认样本类型'+#2+'Edit'+#2+#2+'1'+#2+#2+#3+
      '默认样本状态'+#2+'Edit'+#2+#2+'1'+#2+#2+#3+
      '组合项目代码'+#2+'Edit'+#2+#2+'1'+#2+#2+#3+
      '开机自动运行'+#2+'CheckListBox'+#2+#2+'1'+#2+#2+#3+
      '调试日志'+#2+'CheckListBox'+#2+#2+'0'+#2+'注:强烈建议在正常运行时关闭'+#2+#3+
      '高值质控联机号'+#2+'Edit'+#2+#2+'2'+#2+#2+#3+
      '常值质控联机号'+#2+'Edit'+#2+#2+'2'+#2+#2+#3+
      '低值质控联机号'+#2+'Edit'+#2+#2+'2'+#2+#2+#3;

  if ShowOptionForm('',Pchar(IniSection),Pchar(ss),Pchar(ChangeFileExt(Application.ExeName,'.ini'))) then
	  UpdateConfig;
  end;
end;

procedure TfrmMain.BitBtn2Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TfrmMain.BitBtn1Click(Sender: TObject);
begin
  SaveDialog1.DefaultExt := '.txt';
  SaveDialog1.Filter := 'txt (*.txt)|*.txt';
  if not SaveDialog1.Execute then exit;
  memo1.Lines.SaveToFile(SaveDialog1.FileName);
  showmessage('保存成功!');
end;

procedure TfrmMain.Button1Click(Sender: TObject);
var
  ls:Tstrings;
begin
  OpenDialog1.DefaultExt := '.txt';
  OpenDialog1.Filter := 'txt (*.txt)|*.txt';
  if not OpenDialog1.Execute then exit;
  ls:=Tstringlist.Create;
  ls.LoadFromFile(OpenDialog1.FileName);
  rfm:=ls.Text;
  Timer1Timer(Timer1);
  ls.Free;
end;

procedure TfrmMain.ToolButton5Click(Sender: TObject);
var
  ss:string;
begin
  ss:='RegisterNum'+#2+'Edit'+#2+#2+'0'+#2+'将该窗体标题栏上的字符串发给开发者,以获取注册码'+#2;
  if bRegister then exit;
  if ShowOptionForm(Pchar('注册:'+GetHDSn('C:\')+'-'+GetHDSn('D:\')+'-'+ChangeFileExt(ExtractFileName(Application.ExeName),'')),Pchar(IniSection),Pchar(ss),Pchar(ChangeFileExt(Application.ExeName,'.ini'))) then
    if ifRegister then bRegister:=true else bRegister:=false;
end;

procedure TfrmMain.ComPort1AfterOpen(Sender: TObject);
begin
  ComPort1.SetDTR(true);
  ComPort1.SetRTS(true);
end;

procedure TfrmMain.ComPort1RxChar(Sender: TObject; Count: Integer);
var
  str:string;
begin
  comport1.ReadStr(str,count);
  
  if length(memo1.Lines.Text)>=60000 then memo1.Lines.Clear;//memo只能接受64K个字符
  memo1.Lines.Add(str);

  WriteLog(pchar(str));//越秀中医医院说要溯源

  rfm:=rfm+str;
  if(not timer1.Enabled)then
  BEGIN
    //timer1.Interval:=strtointdef(edtSendTime.text,3)*1000;
    timer1.Enabled:=true;
  END;
end;

function StrToList(const SourStr:string;const Separator:string):TStrings;
//根据指定的分隔字符串(Separator)将字符串(SourStr)导入到字符串列表中
var
  vSourStr,s:string;
  ll,lll:integer;
begin
  vSourStr:=SourStr;
  Result := TStringList.Create;
  lll:=length(Separator);

  while pos(Separator,vSourStr)<>0 do
  begin
    ll:=pos(Separator,vSourStr);
    Result.Add(copy(vSourStr,1,ll-1));
    delete(vSourStr,1,ll+lll-1);
  end;  //}
  Result.Add(vSourStr);
  s:=vSourStr;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
var
  SpecNo:string;
  sValue:string;
  showID:string;
  FInts:OleVariant;
  ReceiveItemInfo:OleVariant;
  i{,iSpecNo}:integer;
  sList:tstrings;
  tempRFM:string;

  ADOConn_Lis:TADOConnection;
  adoTemp11:TAdoquery;
  Reserve4:string;
  j:integer;
  l_ReturnValue:single;
  iLogicalSymbol:integer;//逻辑判断符的位置
  sLogicalSymbol:String;//逻辑判断符
  fLogicalValue:single;//逻辑值
  sTrueValue,sFalseValue:string;
  sTemp11:string;
  sSelfValue:string;
  sJValue:string;
  QcReserve4:string;
  sQcJValue:string;
  l_QcReturnValue:single;
  iMaxDotLen:integer;
begin
  TTimer(Sender).Enabled:=false;

  tempRFM:=rfm;
  rfm:='';

  ADOConn_Lis:=TADOConnection.Create(nil);
  ADOConn_Lis.Connected := false;
  ADOConn_Lis.ConnectionString := ConnectString;
  try
    ADOConn_Lis.Connected := true;
  except
    ADOConn_Lis.Free;
    if length(memo1.Lines.Text)>=60000 then memo1.Lines.Clear;//memo只能接受64K个字符
    memo1.Lines.Add('连接LIS数据库失败!');
    exit;
  end;

  sList:=TStringList.Create;
  ExtractStrings([',',#$D,#$A],[],Pchar(tempRFM),sList);
  if sList.Count<=96 then exit;
  
  for i :=0  to ComponentCount-1 do
  begin
    if not (Components[i] is TEdit) then continue;
    if Components[i].Tag<1 then continue;
    if Components[i].Tag>96 then continue;
    if trim(TEdit(Components[i]).Text)='' then continue;

    SpecNo:=rightstr('0000'+trim(TEdit(Components[i]).Text),4);
    showID:=trim(sList[96]);
    sSelfValue:=StringReplace(sList[Components[i].Tag-1],'+','',[rfReplaceAll,rfIgnoreCase]);
    sSelfValue:=StringReplace(sSelfValue,'-','',[rfReplaceAll,rfIgnoreCase]);

    adoTemp11:=TAdoquery.Create(nil);
    adotemp11.Connection:=ADOConn_Lis;
    adotemp11.Close;
    adotemp11.SQL.Clear;
    adotemp11.SQL.Text:='select * from clinicchkitem where COMMWORD=:COMMWORD and dlttype=:dlttype ';
    adotemp11.Parameters.ParamByName('COMMWORD').Value:=EquipChar;
    adotemp11.Parameters.ParamByName('dlttype').Value:=showID;
    adotemp11.Open;
    Reserve4:=adotemp11.fieldbyname('Dosage2').AsString;
    adotemp11.Free;

    if(SpecNo=QuaContSpecNoG)or(SpecNo=QuaContSpecNo)or(SpecNo=QuaContSpecNoD)then//质控
    begin
      if pos(';',Reserve4)<=0 then
      begin
        if length(memo1.Lines.Text)>=60000 then memo1.Lines.Clear;//memo只能接受64K个字符
        memo1.Lines.Add('公式设置错误---无质控公式!');
        continue;
      end;
      QcReserve4:=copy(Reserve4,pos(';',Reserve4)+1,MaxInt);
      QcReserve4:=StringReplace(QcReserve4,'[self]',sSelfValue,[rfReplaceAll,rfIgnoreCase]);
      for j := 0 to sList.Count-1 do
      begin
        sQcJValue:=StringReplace(sList[j],'+','',[rfReplaceAll,rfIgnoreCase]);
        sQcJValue:=StringReplace(sQcJValue,'-','',[rfReplaceAll,rfIgnoreCase]);
        QcReserve4:=StringReplace(QcReserve4,'['+inttostr(j+1)+']',sQcJValue,[rfReplaceAll,rfIgnoreCase]);
      end;

      iMaxDotLen:=MaxDotLen(pchar(QcReserve4));
      if CalParserValue(Pchar(QcReserve4),l_QcReturnValue) then
      begin
        sValue:=format('%.'+inttostr(iMaxDotLen)+'f',[l_QcReturnValue])
      end else
      begin
        if length(memo1.Lines.Text)>=60000 then memo1.Lines.Clear;//memo只能接受64K个字符
        memo1.Lines.Add('孔号'+inttostr(Components[i].Tag)+'质控公式'+QcReserve4+'设置错误或测量值有误，无法计算!');
        continue;
      end;
    end else
    begin//非质控    
      iLogicalSymbol:=pos('>=',Reserve4);
      if iLogicalSymbol>0 then sLogicalSymbol:='>='
      else begin
        iLogicalSymbol:=pos('>',Reserve4);
        if iLogicalSymbol>0 then sLogicalSymbol:='>'
        else begin
          iLogicalSymbol:=pos('<=',Reserve4);
          if iLogicalSymbol>0 then sLogicalSymbol:='<='
          else begin
            iLogicalSymbol:=pos('<',Reserve4);
            if iLogicalSymbol>0 then sLogicalSymbol:='<';
          end;
        end;
      end;

      if(iLogicalSymbol<=0)or(sLogicalSymbol='') then
      begin
        if length(memo1.Lines.Text)>=60000 then memo1.Lines.Clear;//memo只能接受64K个字符
        memo1.Lines.Add('公式设置错误---无逻辑符!');
        continue;
      end;

      sTemp11:=copy(Reserve4,iLogicalSymbol+length(sLogicalSymbol),MaxInt);
      sTemp11:=copy(sTemp11,1,pos('?',sTemp11)-1);
      if not TryStrToFloat(trim(sTemp11),fLogicalValue) then
      begin
        if length(memo1.Lines.Text)>=60000 then memo1.Lines.Clear;//memo只能接受64K个字符
        memo1.Lines.Add('公式设置错误---逻辑值必须为数值!');
        continue;
      end;

      sTemp11:=copy(Reserve4,pos('?',Reserve4)+1,MaxInt);
      sTrueValue:=copy(sTemp11,1,pos(':',sTemp11)-1);
      if pos(';',Reserve4)>0 then
        sFalseValue:=copy(Reserve4,pos(':',Reserve4)+1,pos(';',Reserve4)-pos(':',Reserve4)-1)
      else sFalseValue:=copy(Reserve4,pos(':',Reserve4)+1,MaxInt);
      if(sTrueValue='')or(sFalseValue='') then
      begin
        if length(memo1.Lines.Text)>=60000 then memo1.Lines.Clear;//memo只能接受64K个字符
        memo1.Lines.Add('公式设置错误---无结果值!');
        continue;
      end;

      Reserve4:=copy(Reserve4,1,iLogicalSymbol-1);
      Reserve4:=StringReplace(Reserve4,'[self]',sSelfValue,[rfReplaceAll,rfIgnoreCase]);
      for j := 0 to sList.Count-1 do
      begin
        sJValue:=StringReplace(sList[j],'+','',[rfReplaceAll,rfIgnoreCase]);
        sJValue:=StringReplace(sJValue,'-','',[rfReplaceAll,rfIgnoreCase]);
        Reserve4:=StringReplace(Reserve4,'['+inttostr(j+1)+']',sJValue,[rfReplaceAll,rfIgnoreCase]);
      end;

      //iMaxDotLen:=MaxDotLen(pchar(calc_express));
      if CalParserValue(Pchar(Reserve4),l_ReturnValue) then
      begin
        //Reserve4:=format('%.'+inttostr(iMaxDotLen)+'f',[l_ReturnValue])
        if sLogicalSymbol='>=' then
          if l_ReturnValue>=fLogicalValue then sValue:=sTrueValue else sValue:=sFalseValue;
        if sLogicalSymbol='>' then
          if l_ReturnValue>fLogicalValue then sValue:=sTrueValue else sValue:=sFalseValue;
        if sLogicalSymbol='<=' then
          if l_ReturnValue<=fLogicalValue then sValue:=sTrueValue else sValue:=sFalseValue;
        if sLogicalSymbol='<' then
          if l_ReturnValue<fLogicalValue then sValue:=sTrueValue else sValue:=sFalseValue;
      end else
      begin
        //if pos('['+itemid+']',calc_express)>0 then//接口传过来的自计算项目,如无法计算,则显示原值.如血球传过来的***
        //  calc_express:=itemvalueJ
        //else
        if length(memo1.Lines.Text)>=60000 then memo1.Lines.Clear;//memo只能接受64K个字符
        memo1.Lines.Add('孔号'+inttostr(Components[i].Tag)+'公式'+Reserve4+'设置错误或测量值有误，无法计算!');
        continue;
        //sValue:='';
      end;
    end;

    ReceiveItemInfo:=VarArrayCreate([0,0],varVariant);
    ReceiveItemInfo[0]:=VarArrayof([showID,sValue,'','']);
    if bRegister then
    begin
      FInts :=CreateOleObject('Data2LisSvr.Data2Lis');
      FInts.fData2Lis(ReceiveItemInfo,SpecNo,'',
        (GroupName),(SpecType),(SpecStatus),(EquipChar),
        (CombinID),'',(LisFormCaption),(ConnectString),
        (QuaContSpecNoG),(QuaContSpecNo),(QuaContSpecNoD),'',
        ifRecLog,true,'常规');
      if not VarIsEmpty(FInts) then FInts:= unAssigned;
    end;
  end;
   
  sList.Free;

  ADOConn_Lis.Connected:=false;
  ADOConn_Lis.Free;
end;

initialization
    hnd := CreateMutex(nil, True, Pchar(ExtractFileName(Application.ExeName)));
    if GetLastError = ERROR_ALREADY_EXISTS then
    begin
        MessageBox(application.Handle,pchar('该程序已在运行中！'),
                    '系统提示',MB_OK+MB_ICONinformation);   
        Halt;
    end;

finalization
    if hnd <> 0 then CloseHandle(hnd);

end.
