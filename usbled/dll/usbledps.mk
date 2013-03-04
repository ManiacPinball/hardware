
usbledps.dll: dlldata.obj usbled_p.obj usbled_i.obj
	link /dll /out:usbledps.dll /def:usbledps.def /entry:DllMain dlldata.obj usbled_p.obj usbled_i.obj \
		kernel32.lib rpcndr.lib rpcns4.lib rpcrt4.lib oleaut32.lib uuid.lib \

.c.obj:
	cl /c /Ox /DWIN32 /D_WIN32_WINNT=0x0400 /DREGISTER_PROXY_DLL \
		$<

clean:
	@del usbledps.dll
	@del usbledps.lib
	@del usbledps.exp
	@del dlldata.obj
	@del usbled_p.obj
	@del usbled_i.obj
