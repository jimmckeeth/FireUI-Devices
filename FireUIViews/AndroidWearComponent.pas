unit AndroidWearComponent;

interface

uses Classes;

type
  TAndroidWearViews=class(TComponent)
  private
    function GetSupportedDevices: string;
  published
    property SupportedDevices: string read GetSupportedDevices;
  end;

procedure Register;

implementation

uses
  GearLiveDevice, Moto360Device, LGGDevice;

procedure Register;
begin
  RegisterComponents('FireUI Views', [TAndroidWearViews]);
end;

{ TAndroidWearViews }

function TAndroidWearViews.GetSupportedDevices: string;
begin
  Result := 'Gear Live, LG-G & Moto 360';
end;

end.
