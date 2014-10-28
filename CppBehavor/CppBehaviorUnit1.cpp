//---------------------------------------------------------------------------

#include <fmx.h>
#include <FMX.BehaviorManager.hpp>
#pragma hdrstop

#include "CppBehaviorUnit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.fmx"
TForm6 *Form6;
//---------------------------------------------------------------------------
__fastcall TForm6::TForm6(TComponent* Owner)
	: TForm(Owner)
{

_di_IDeviceBehavior DeviceBehavior;
if (TBehaviorServices::Current->SupportsBehaviorService(
 __uuidof(IDeviceBehavior), DeviceBehavior, this) &&
  (DeviceBehavior->GetOSPlatform() == TOSPlatform::iOS)) {
  // iOS specific code
}
  /*
  if TBehaviorServices.Current.SupportsBehaviorService(
	IDeviceBehavior, DeviceBehavior, Self) and
    (DeviceBehavior.GetOSPlatform = TOSPlatform.iOS) then
    // behavior specific to iOS
end;  */

  TDeviceDisplayMetrics DisplayMetrics;
  DisplayMetrics = DeviceBehavior->GetDisplayMetrics(this);
  if (DisplayMetrics.AspectRatio > x) {

  }

/*
var
  DisplayMetrics: TDeviceDisplayMetrics;
begin                        // self is a form in this case
  DisplayMetrics := DeviceBehavior.GetDisplayMetrics(Self);
  if DisplayMetrics.AspectRatio > x then
	// AspectRatio specific behavior
end;*/
}
//---------------------------------------------------------------------------
