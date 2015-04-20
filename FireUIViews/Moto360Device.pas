unit Moto360Device;

interface

implementation

uses

  system.Devices, system.Types, system.SysUtils;

const
  ViewName = 'Moto360'; // The name of the view.

{
  Add this after MobileDevices in
  %AppData%\Embarcadero\BDS\16.0\DevicePresets.xml

  <MobileDevice>
    <Displayname>Moto360</Displayname>
    <Name>Moto360</Name>
    <DevicePlatform>3</DevicePlatform>
    <FormFactor>2</FormFactor>
    <Portrait Enabled="True" Width="240" Height="218" Top="102" Left="29" StatusbarHeight="0" StatusBarPos="0" Artwork="C:\Users\jim\Documents\Embarcadero\Studio\FireUI-Devices\Moto360.png" />
    <UpsideDown Enabled="False" />
    <LandscapeLeft Enabled="False" />
    <LandscapeRight Enabled="False" />
  </MobileDevice>
}

initialization

  TDeviceinfo.AddDevice(TDeviceinfo.TDeviceClass.Watch, ViewName,
    // The Moto360 is 320x290 phyiscal and 240x218 logical with 213 PPI
    // The Android Wear emulator is 320x320 and 213x213 logical with 240 PPI
    TSize.Create(320, 290), TSize.Create(240, 218), // MinPhysicalSize(max, min), MinLogicalSize(max, min)
    TOSVersion.TPlatform.pfAndroid, 213, //Select the platform and the pixel density.
    True); // Exclusive

finalization

  TDeviceinfo.RemoveDevice(ViewName); // To unregister the view after unistalling the package.

end.
