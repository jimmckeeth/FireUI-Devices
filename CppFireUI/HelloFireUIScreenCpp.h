//---------------------------------------------------------------------------

#ifndef HelloMotoScreenCppH
#define HelloMotoScreenCppH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Forms.hpp>
#include <FMX.Objects.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Types.hpp>
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
	TCircle *CircleInner;
	TCircle *CircleOuter;
	TLabel *Label1;
	TLabel *lblPhysical;
	TLabel *lblPPI;
	TLabel *lblClass;
	TImage *Image1;
	TStyleBook *StyleBook1;
	TLabel *lblLogical;
	TTimer *Timer1;
	void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
