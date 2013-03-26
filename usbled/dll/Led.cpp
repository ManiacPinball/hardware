// Led.cpp : Implementation of CLed
#include "stdafx.h"
#include "usbled.h"
#include "Led.h"
#include <atlbase.h>

/////////////////////////////////////////////////////////////////////////////
// CLed


STDMETHODIMP CLed::Command(int Value)
{
  DWORD byteswritten;
  char outbuffer[6];
  outbuffer[0] = 'S';
  outbuffer[1] = Value & 0xFF;
  outbuffer[2] = (Value << 8) & 0xFF;
  outbuffer[3] = (Value << 8) & 0xFF;
  outbuffer[4] = (Value << 8) & 0xFF;
  outbuffer[5] = 'E';

  WriteFile(hSerial, &outbuffer, 6, &byteswritten, NULL);

  return S_OK;
}

STDMETHODIMP CLed::Connect(BSTR ComValue)
{
  hSerial = CreateFile(COLE2CT(ComValue), GENERIC_WRITE | GENERIC_READ, 0, 0, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);

  if(hSerial==INVALID_HANDLE_VALUE)
  {
    return S_FALSE;
  }
  DCB dcbSerialParams = {0};

  if (!GetCommState(hSerial, &dcbSerialParams))
  {
    return S_FALSE;
  }

  //dcbSerialParams.BaudRate=CBR_9600;
  dcbSerialParams.BaudRate=CBR_115200;
  dcbSerialParams.ByteSize=8;
  dcbSerialParams.StopBits=ONESTOPBIT;
  dcbSerialParams.Parity=NOPARITY;

  if(!SetCommState(hSerial, &dcbSerialParams))
  {
    return S_FALSE;
  }

  int Value = 'N';
  DWORD byteswritten;
  WriteFile(hSerial, &Value, 1, &byteswritten, NULL);
  ReadFile(hSerial, (LPVOID)iShiftCount, sizeof(iShiftCount), &byteswritten, NULL);


  return S_OK;
}
