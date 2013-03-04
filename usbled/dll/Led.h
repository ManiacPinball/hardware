// Led.h : Declaration of the CLed

#ifndef __LED_H_
#define __LED_H_

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CLed
class ATL_NO_VTABLE CLed : 
	public CComObjectRootEx<CComSingleThreadModel>,
	public CComCoClass<CLed, &CLSID_Led>,
	public IDispatchImpl<ILed, &IID_ILed, &LIBID_usbledLib>
{
public:
	CLed()
	{
	}

DECLARE_REGISTRY_RESOURCEID(IDR_LED)

DECLARE_PROTECT_FINAL_CONSTRUCT()

BEGIN_COM_MAP(CLed)
	COM_INTERFACE_ENTRY(ILed)
	COM_INTERFACE_ENTRY(IDispatch)
END_COM_MAP()

// ILed
public:
	STDMETHOD(Connect)();
	STDMETHOD(Command)(int Value);
private:
	HANDLE hSerial;
};

#endif //__LED_H_
