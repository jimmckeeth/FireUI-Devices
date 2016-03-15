Original blog post: http://delphi.org/2014/09/hello-moto-360-from-delphi-xe7/

To install the new views, open the FireUIViews package project and install it in the IDE.

Move the Moto360.png and GearLive.png somewhere you can find easily

Edit the MobileDevices.xml file found in
  %AppData%\Embarcadero\BDS\17.0\DevicePresets.xml
Adding the following after MobileDevices
Replace "<Fullpath>" will the full path to the Moto306.png file.

  <MobileDevice>
    <Name>Moto360</Name>
    <Displayname>Moto 360</Displayname>
    <DevicePlatform>3</DevicePlatform>
    <FormFactor>2</FormFactor>
    <UserData>True</UserData>
    <Portrait Enabled="True" Width="240" Height="218" Top="102" Left="29" StatusbarHeight="0" StatusBarPos="0" Artwork="<Fullpath>Moto360.png" />
    <UpsideDown Enabled="False" Width="240" Height="218" Top="0" Left="0" StatusbarHeight="0" StatusBarPos="0" Artwork="" />
    <LandscapeLeft Enabled="False" Width="240" Height="218" Top="0" Left="0" StatusbarHeight="0" StatusBarPos="0" Artwork="" />
    <LandscapeRight Enabled="False" Width="240" Height="218" Top="0" Left="0" StatusbarHeight="0" StatusBarPos="0" Artwork="" />
  </MobileDevice>

Do the same for the Galaxy Gear and GearLive.png

  <MobileDevice>
    <Displayname>Gear Live</Displayname>
    <Name>GearLive</Name>
    <DevicePlatform>3</DevicePlatform>
    <FormFactor>2</FormFactor>
    <UserData>True</UserData>
    <Portrait Enabled="True" Width="213" Height="213" Top="227" Left="313" StatusbarHeight="0" StatusBarPos="0" Artwork="<Fullpath>GearLive.png" />
    <UpsideDown Enabled="False" Width="213" Height="213" Top="0" Left="0" StatusbarHeight="0" StatusBarPos="0" Artwork="" />
    <LandscapeLeft Enabled="False" Width="213" Height="213" Top="0" Left="0" StatusbarHeight="0" StatusBarPos="0" Artwork="" />
    <LandscapeRight Enabled="False" Width="213" Height="213" Top="0" Left="0" StatusbarHeight="0" StatusBarPos="0" Artwork="" />
  </MobileDevice>

Restart your IDE.

Any project that you want to deploy to the Moto360 or Galaxy Gear and use the Moto360 or GalaxyGear view needs to use the Moto360Device.pas or GalaxyGearDevice.pas file.

To connect to and deploy onto your Moto360, follow the following directions. 
http://blog.timmattison.com/archives/2014/07/16/common-android-wear-tasks-for-developers/

Because the deployment is over bluetooth it takes a long time, around 4-5 minutes in my tests.

Galaxy Gear uses USB so deploys much quicker.