program HelloMoto;

uses
  System.StartUpCopy,
  FMX.Forms,
  HelloUnit in 'HelloUnit.pas' {Form10},
  Moto360Device in '..\Moto360View\Moto360Device.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
