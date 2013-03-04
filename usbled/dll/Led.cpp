// Led.cpp : Implementation of CLed
#include "stdafx.h"
#include "usbled.h"
#include "Led.h"

/////////////////////////////////////////////////////////////////////////////
// CLed


STDMETHODIMP CLed::Command(int Value)
{
  DWORD byteswritten;
  WriteFile(hSerial, &Value, 1, &byteswritten, NULL);

  return S_OK;
}

STDMETHODIMP CLed::Connect()
{
  hSerial = CreateFile("COM10", GENERIC_WRITE | GENERIC_READ, 0, 0, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);

  if(hSerial==INVALID_HANDLE_VALUE)
  {
    return S_FALSE;
  }
  DCB dcbSerialParams = {0};

  if (!GetCommState(hSerial, &dcbSerialParams))
  {
    return S_FALSE;
  }

  dcbSerialParams.BaudRate=CBR_9600;
  dcbSerialParams.ByteSize=8;
  dcbSerialParams.StopBits=ONESTOPBIT;
  dcbSerialParams.Parity=NOPARITY;

  if(!SetCommState(hSerial, &dcbSerialParams))
  {
    return S_FALSE;
  }

  return S_OK;
}
