tv130 = 8	
_v$ = 8		
_start$ = 8	
_calculate_machine_epsilon PROC
	fld	DWORD PTR _start$[esp-4]
	fst	DWORD PTR _v$[esp-4]     ; dieser Befehl ist redundant
	inc	DWORD PTR _v$[esp-4]
	fsubr	DWORD PTR _v$[esp-4]
	fstp	DWORD PTR tv130[esp-4]   ; \verb|\ dieses Befehlspaar ist auch redundant|
	fld	DWORD PTR tv130[esp-4]   ; \verb|/                                      |
	ret	0
_calculate_machine_epsilon ENDP
