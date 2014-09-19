To install the Moto360 view, open the Moto360 package project and install it in the IDE.

Plast Moto360View.png somewhere you can find easily

Edit the MobileDevices.xml file found in
  %AppData%\Roaming\Embarcadero\BDS\15.0\MobileDevices.xml
Adding the following after MobileDevices
Replace "<Fullpath>" will the full path to the Moto306View.png file.

  <MobileDevice>
    <Displayname>Moto360</Displayname>
    <Name>Moto360</Name>
    <DevicePlatform>3</DevicePlatform>
    <FormFactor>2</FormFactor>
    <Portrait Enabled="True" Width="240" Height="218" Top="102" Left="29" StatusbarHeight="0" StatusBarPos="0" Artwork="<Fullpath>\Moto360View\Moto360.png" />
    <UpsideDown Enabled="False" Width="240" Height="218" Top="0" Left="0" StatusbarHeight="0" StatusBarPos="0" Artwork="" />
    <LandscapeLeft Enabled="False" Width="240" Height="218" Top="0" Left="0" StatusbarHeight="0" StatusBarPos="0" Artwork="" />
    <LandscapeRight Enabled="False" Width="240" Height="218" Top="0" Left="0" StatusbarHeight="0" StatusBarPos="0" Artwork="" />
  </MobileDevice>

Restart your IDE.

Any project that you want to deploy to the Moto360 and use the Moto360 view needs to use the Moto360Device.pas file.

To connect to and deploy onto your Moto360, follow the following directions. 
http://blog.timmattison.com/archives/2014/07/16/common-android-wear-tasks-for-developers/

Because the deployment is over bluetooth it takes a long time, around 4-5 minutes in my tests.