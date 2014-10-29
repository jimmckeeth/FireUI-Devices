program HelloFireUIPas;

uses
  System.StartUpCopy,
  FMX.Forms,
  HelloUnit in 'HelloUnit.pas' {Form10},
  Moto360Device in '..\FireUIViews\Moto360Device.pas',
  GearLiveDevice in '..\FireUIViews\GearLiveDevice.pas',
  LGGDevice in '..\FireUIViews\LGGDevice.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
