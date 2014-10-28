//---------------------------------------------------------------------------

#include <fmx.h>
#include <FMX.Platform.hpp>
#include <FMX.BehaviorManager.hpp>
#pragma hdrstop

#include "HelloFireUIScreenCpp.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.fmx"
#pragma resource "*.Moto360.fmx"
#pragma resource "*.GearLive.fmx"

TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm2::FormShow(TObject *Sender)
{
	_di_IFMXDeviceService dev;
	//TDeviceInfo.TDeviceClass devCls

	if (TPlatformServices::Current->SupportsPlatformService(
	  __uuidof(IFMXDeviceMetricsService)))
	{
		_di_IFMXDeviceMetricsService disp;
		disp =
		   TPlatformServices::Current->GetPlatformService(
			  __uuidof(IFMXDeviceMetricsService));

		lblPhysical->Text = Format("Phys: %dx%d",
		  ARRAYOFCONST((
			disp->GetDisplayMetrics().PhysicalScreenSize.cx,
			disp->GetDisplayMetrics().PhysicalScreenSize.cy)));
		lblPPI->Text = Format("PPI: %d", ARRAYOFCONST((disp->GetDisplayMetrics(
		   ).PixelsPerInch)));
	}
   lblLogical->Text = Format("Logic: %dx%d",
	  ARRAYOFCONST((
		this->Width,
		this->Height)));

   if (TPlatformServices::Current->SupportsPlatformService(
	 __uuidof(IFMXDeviceService)))
  {
	_di_IFMXDeviceService dev;
	dev = TPlatformServices::Current->GetPlatformService(
			  __uuidof(IFMXDeviceService));
	lblClass->Text = "Class: " +
	  GetEnumName(__delphirtti(TDeviceInfo::TDeviceClass),
	  (int)(dev->GetDeviceClass()));
  };

}
//---------------------------------------------------------------------------

