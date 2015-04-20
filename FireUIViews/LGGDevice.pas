unit LGGDevice;

interface

implementation

uses

  system.Devices, system.Types, system.SysUtils;

const
  ViewName = 'LGG'; // The name of the view.

{
  Add this after MobileDevices in
  %AppData%\Embarcadero\BDS\16.0\DevicePresets.xml

  <MobileDevice>
    <Displayname>LGGWatch</Displayname>
    <Name>LGGWatch</Name>
    <DevicePlatform>3</DevicePlatform>
    <FormFactor>2</FormFactor>
    <Portrait Enabled="True" Width="187" Height="187" Top="227" Left="313" StatusbarHeight="0" StatusBarPos="0" Artwork="C:\Users\jim\Documents\Embarcadero\Studio\FireUI-Devices\GearLive.png" />
    <UpsideDown Enabled="False"  />
    <LandscapeLeft Enabled="False"  />
    <LandscapeRight Enabled="False"  />
  </MobileDevice>
}

initialization

 { TDeviceinfo.AddDevice(TDeviceinfo.TDeviceClass.Watch, // Identified as Tablet
    ViewName,
    // The GearLive is 280x280 phyiscal and 182x187 logical with 240 PPI
    // Just like the Android Wear emulator
    TSize.Create(280, 280), TSize.Create(187, 187), // MinPhysicalSize(max, min), MinLogicalSize(max, min)
    TOSVersion.TPlatform.pfAndroid, 240, //Select the platform and the pixel density.
    True); // Exclusive     }

finalization
 {
  TDeviceinfo.RemoveDevice(ViewName); // To unregister the view after unistalling the package.
 }
end.
