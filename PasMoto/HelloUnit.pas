unit HelloUnit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Gestures;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    CircleOuter: TCircle;
    CircleInner: TCircle;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    StyleBook1: TStyleBook;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.fmx}
{$R *.Moto360.fmx  }

uses
  System.TypInfo, System.Devices, FMX.Platform, System.Rtti;

procedure TForm10.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
    sgiLeft: ShowMessage('Left');
    sgiRight: ShowMessage('Right');
    sgiUp: ShowMessage('Up');
    sgiDown: ShowMessage('Down');
  end;
end;

procedure TForm10.FormShow(Sender: TObject);
var
  disp: IFMXDeviceMetricsService;
  dev: IFMXDeviceService;
  devCls: TDeviceInfo.TDeviceClass;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXDeviceMetricsService) then
  begin
    disp := IFMXDeviceMetricsService(TPlatformServices.Current.GetPlatformService(IFMXDeviceMetricsService));
    Label2.Text := Format('Phys: %dx%d',
      [disp.GetDisplayMetrics.PhysicalScreenSize.cx, disp.GetDisplayMetrics.PhysicalScreenSize.cy]);
    Label3.Text := Format('PPI: %d', [disp.GetDisplayMetrics.PixelsPerInch]);
  end;


  if TPlatformServices.Current.SupportsPlatformService(IFMXDeviceService) then
  begin
    dev := IFMXDeviceService(TPlatformServices.Current.GetPlatformService(IFMXDeviceService));
    devCls := dev.GetDeviceClass;
    Label4.Text := 'Class: ' + GetEnumName(TypeInfo(TDeviceInfo.TDeviceClass), ord(devCls));
  end;

  Label5.Text := Format('Design: %dx%d', [Self.Width, Self.Height]);
end;

end.
