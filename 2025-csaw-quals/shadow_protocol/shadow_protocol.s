
shadow_protocol:	file format elf64-x86-64

Disassembly of section .init:

0000000000001000 <_init>:
    1000: f3 0f 1e fa                  	endbr64
    1004: 48 83 ec 08                  	sub	rsp, 0x8
    1008: 48 8b 05 d9 2f 00 00         	mov	rax, qword ptr [rip + 0x2fd9] # 0x3fe8 <_GLOBAL_OFFSET_TABLE_+0xd8>
    100f: 48 85 c0                     	test	rax, rax
    1012: 74 02                        	je	0x1016 <_init+0x16>
    1014: ff d0                        	call	rax
    1016: 48 83 c4 08                  	add	rsp, 0x8
    101a: c3                           	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020: ff 35 f2 2e 00 00            	push	qword ptr [rip + 0x2ef2] # 0x3f18 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026: ff 25 f4 2e 00 00            	jmp	qword ptr [rip + 0x2ef4] # 0x3f20 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c: 0f 1f 40 00                  	nop	dword ptr [rax]
    1030: f3 0f 1e fa                  	endbr64
    1034: 68 00 00 00 00               	push	0x0
    1039: e9 e2 ff ff ff               	jmp	0x1020 <.plt>
    103e: 66 90                        	nop
    1040: f3 0f 1e fa                  	endbr64
    1044: 68 01 00 00 00               	push	0x1
    1049: e9 d2 ff ff ff               	jmp	0x1020 <.plt>
    104e: 66 90                        	nop
    1050: f3 0f 1e fa                  	endbr64
    1054: 68 02 00 00 00               	push	0x2
    1059: e9 c2 ff ff ff               	jmp	0x1020 <.plt>
    105e: 66 90                        	nop
    1060: f3 0f 1e fa                  	endbr64
    1064: 68 03 00 00 00               	push	0x3
    1069: e9 b2 ff ff ff               	jmp	0x1020 <.plt>
    106e: 66 90                        	nop
    1070: f3 0f 1e fa                  	endbr64
    1074: 68 04 00 00 00               	push	0x4
    1079: e9 a2 ff ff ff               	jmp	0x1020 <.plt>
    107e: 66 90                        	nop
    1080: f3 0f 1e fa                  	endbr64
    1084: 68 05 00 00 00               	push	0x5
    1089: e9 92 ff ff ff               	jmp	0x1020 <.plt>
    108e: 66 90                        	nop
    1090: f3 0f 1e fa                  	endbr64
    1094: 68 06 00 00 00               	push	0x6
    1099: e9 82 ff ff ff               	jmp	0x1020 <.plt>
    109e: 66 90                        	nop
    10a0: f3 0f 1e fa                  	endbr64
    10a4: 68 07 00 00 00               	push	0x7
    10a9: e9 72 ff ff ff               	jmp	0x1020 <.plt>
    10ae: 66 90                        	nop
    10b0: f3 0f 1e fa                  	endbr64
    10b4: 68 08 00 00 00               	push	0x8
    10b9: e9 62 ff ff ff               	jmp	0x1020 <.plt>
    10be: 66 90                        	nop
    10c0: f3 0f 1e fa                  	endbr64
    10c4: 68 09 00 00 00               	push	0x9
    10c9: e9 52 ff ff ff               	jmp	0x1020 <.plt>
    10ce: 66 90                        	nop
    10d0: f3 0f 1e fa                  	endbr64
    10d4: 68 0a 00 00 00               	push	0xa
    10d9: e9 42 ff ff ff               	jmp	0x1020 <.plt>
    10de: 66 90                        	nop
    10e0: f3 0f 1e fa                  	endbr64
    10e4: 68 0b 00 00 00               	push	0xb
    10e9: e9 32 ff ff ff               	jmp	0x1020 <.plt>
    10ee: 66 90                        	nop
    10f0: f3 0f 1e fa                  	endbr64
    10f4: 68 0c 00 00 00               	push	0xc
    10f9: e9 22 ff ff ff               	jmp	0x1020 <.plt>
    10fe: 66 90                        	nop
    1100: f3 0f 1e fa                  	endbr64
    1104: 68 0d 00 00 00               	push	0xd
    1109: e9 12 ff ff ff               	jmp	0x1020 <.plt>
    110e: 66 90                        	nop
    1110: f3 0f 1e fa                  	endbr64
    1114: 68 0e 00 00 00               	push	0xe
    1119: e9 02 ff ff ff               	jmp	0x1020 <.plt>
    111e: 66 90                        	nop
    1120: f3 0f 1e fa                  	endbr64
    1124: 68 0f 00 00 00               	push	0xf
    1129: e9 f2 fe ff ff               	jmp	0x1020 <.plt>
    112e: 66 90                        	nop
    1130: f3 0f 1e fa                  	endbr64
    1134: 68 10 00 00 00               	push	0x10
    1139: e9 e2 fe ff ff               	jmp	0x1020 <.plt>
    113e: 66 90                        	nop
    1140: f3 0f 1e fa                  	endbr64
    1144: 68 11 00 00 00               	push	0x11
    1149: e9 d2 fe ff ff               	jmp	0x1020 <.plt>
    114e: 66 90                        	nop
    1150: f3 0f 1e fa                  	endbr64
    1154: 68 12 00 00 00               	push	0x12
    1159: e9 c2 fe ff ff               	jmp	0x1020 <.plt>
    115e: 66 90                        	nop
    1160: f3 0f 1e fa                  	endbr64
    1164: 68 13 00 00 00               	push	0x13
    1169: e9 b2 fe ff ff               	jmp	0x1020 <.plt>
    116e: 66 90                        	nop
    1170: f3 0f 1e fa                  	endbr64
    1174: 68 14 00 00 00               	push	0x14
    1179: e9 a2 fe ff ff               	jmp	0x1020 <.plt>
    117e: 66 90                        	nop
    1180: f3 0f 1e fa                  	endbr64
    1184: 68 15 00 00 00               	push	0x15
    1189: e9 92 fe ff ff               	jmp	0x1020 <.plt>
    118e: 66 90                        	nop

Disassembly of section .plt.got:

0000000000001190 <.plt.got>:
    1190: f3 0f 1e fa                  	endbr64

0000000000001194 <__cxa_finalize@plt>:
    1194: ff 25 5e 2e 00 00            	jmp	qword ptr [rip + 0x2e5e] # 0x3ff8 <_GLOBAL_OFFSET_TABLE_+0xe8>
    119a: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]

Disassembly of section .plt.sec:

00000000000011a0 <.plt.sec>:
    11a0: f3 0f 1e fa                  	endbr64
    11a4: ff 25 7e 2d 00 00            	jmp	qword ptr [rip + 0x2d7e] # 0x3f28 <_GLOBAL_OFFSET_TABLE_+0x18>
    11aa: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    11b0: f3 0f 1e fa                  	endbr64
    11b4: ff 25 76 2d 00 00            	jmp	qword ptr [rip + 0x2d76] # 0x3f30 <_GLOBAL_OFFSET_TABLE_+0x20>
    11ba: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    11c0: f3 0f 1e fa                  	endbr64
    11c4: ff 25 6e 2d 00 00            	jmp	qword ptr [rip + 0x2d6e] # 0x3f38 <_GLOBAL_OFFSET_TABLE_+0x28>
    11ca: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    11d0: f3 0f 1e fa                  	endbr64
    11d4: ff 25 66 2d 00 00            	jmp	qword ptr [rip + 0x2d66] # 0x3f40 <_GLOBAL_OFFSET_TABLE_+0x30>
    11da: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    11e0: f3 0f 1e fa                  	endbr64
    11e4: ff 25 5e 2d 00 00            	jmp	qword ptr [rip + 0x2d5e] # 0x3f48 <_GLOBAL_OFFSET_TABLE_+0x38>
    11ea: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    11f0: f3 0f 1e fa                  	endbr64
    11f4: ff 25 56 2d 00 00            	jmp	qword ptr [rip + 0x2d56] # 0x3f50 <_GLOBAL_OFFSET_TABLE_+0x40>
    11fa: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    1200: f3 0f 1e fa                  	endbr64
    1204: ff 25 4e 2d 00 00            	jmp	qword ptr [rip + 0x2d4e] # 0x3f58 <_GLOBAL_OFFSET_TABLE_+0x48>
    120a: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    1210: f3 0f 1e fa                  	endbr64
    1214: ff 25 46 2d 00 00            	jmp	qword ptr [rip + 0x2d46] # 0x3f60 <_GLOBAL_OFFSET_TABLE_+0x50>
    121a: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    1220: f3 0f 1e fa                  	endbr64
    1224: ff 25 3e 2d 00 00            	jmp	qword ptr [rip + 0x2d3e] # 0x3f68 <_GLOBAL_OFFSET_TABLE_+0x58>
    122a: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    1230: f3 0f 1e fa                  	endbr64
    1234: ff 25 36 2d 00 00            	jmp	qword ptr [rip + 0x2d36] # 0x3f70 <_GLOBAL_OFFSET_TABLE_+0x60>
    123a: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    1240: f3 0f 1e fa                  	endbr64
    1244: ff 25 2e 2d 00 00            	jmp	qword ptr [rip + 0x2d2e] # 0x3f78 <_GLOBAL_OFFSET_TABLE_+0x68>
    124a: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    1250: f3 0f 1e fa                  	endbr64
    1254: ff 25 26 2d 00 00            	jmp	qword ptr [rip + 0x2d26] # 0x3f80 <_GLOBAL_OFFSET_TABLE_+0x70>
    125a: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    1260: f3 0f 1e fa                  	endbr64
    1264: ff 25 1e 2d 00 00            	jmp	qword ptr [rip + 0x2d1e] # 0x3f88 <_GLOBAL_OFFSET_TABLE_+0x78>
    126a: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    1270: f3 0f 1e fa                  	endbr64
    1274: ff 25 16 2d 00 00            	jmp	qword ptr [rip + 0x2d16] # 0x3f90 <_GLOBAL_OFFSET_TABLE_+0x80>
    127a: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    1280: f3 0f 1e fa                  	endbr64
    1284: ff 25 0e 2d 00 00            	jmp	qword ptr [rip + 0x2d0e] # 0x3f98 <_GLOBAL_OFFSET_TABLE_+0x88>
    128a: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    1290: f3 0f 1e fa                  	endbr64
    1294: ff 25 06 2d 00 00            	jmp	qword ptr [rip + 0x2d06] # 0x3fa0 <_GLOBAL_OFFSET_TABLE_+0x90>
    129a: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    12a0: f3 0f 1e fa                  	endbr64
    12a4: ff 25 fe 2c 00 00            	jmp	qword ptr [rip + 0x2cfe] # 0x3fa8 <_GLOBAL_OFFSET_TABLE_+0x98>
    12aa: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    12b0: f3 0f 1e fa                  	endbr64
    12b4: ff 25 f6 2c 00 00            	jmp	qword ptr [rip + 0x2cf6] # 0x3fb0 <_GLOBAL_OFFSET_TABLE_+0xa0>
    12ba: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    12c0: f3 0f 1e fa                  	endbr64
    12c4: ff 25 ee 2c 00 00            	jmp	qword ptr [rip + 0x2cee] # 0x3fb8 <_GLOBAL_OFFSET_TABLE_+0xa8>
    12ca: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    12d0: f3 0f 1e fa                  	endbr64
    12d4: ff 25 e6 2c 00 00            	jmp	qword ptr [rip + 0x2ce6] # 0x3fc0 <_GLOBAL_OFFSET_TABLE_+0xb0>
    12da: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    12e0: f3 0f 1e fa                  	endbr64
    12e4: ff 25 de 2c 00 00            	jmp	qword ptr [rip + 0x2cde] # 0x3fc8 <_GLOBAL_OFFSET_TABLE_+0xb8>
    12ea: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    12f0: f3 0f 1e fa                  	endbr64
    12f4: ff 25 d6 2c 00 00            	jmp	qword ptr [rip + 0x2cd6] # 0x3fd0 <_GLOBAL_OFFSET_TABLE_+0xc0>
    12fa: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]

Disassembly of section .text:

0000000000001300 <_start>:
    1300: f3 0f 1e fa                  	endbr64
    1304: 31 ed                        	xor	ebp, ebp
    1306: 49 89 d1                     	mov	r9, rdx
    1309: 5e                           	pop	rsi
    130a: 48 89 e2                     	mov	rdx, rsp
    130d: 48 83 e4 f0                  	and	rsp, -0x10
    1311: 50                           	push	rax
    1312: 54                           	push	rsp
    1313: 45 31 c0                     	xor	r8d, r8d
    1316: 31 c9                        	xor	ecx, ecx
    1318: 48 8d 3d bb 05 00 00         	lea	rdi, [rip + 0x5bb]      # 0x18da <main>
    131f: ff 15 b3 2c 00 00            	call	qword ptr [rip + 0x2cb3] # 0x3fd8 <_GLOBAL_OFFSET_TABLE_+0xc8>
    1325: f4                           	hlt
    1326: 66 2e 0f 1f 84 00 00 00 00 00	nop	word ptr cs:[rax + rax]

0000000000001330 <deregister_tm_clones>:
    1330: 48 8d 3d d9 2c 00 00         	lea	rdi, [rip + 0x2cd9]     # 0x4010 <completed.0>
    1337: 48 8d 05 d2 2c 00 00         	lea	rax, [rip + 0x2cd2]     # 0x4010 <completed.0>
    133e: 48 39 f8                     	cmp	rax, rdi
    1341: 74 15                        	je	0x1358 <deregister_tm_clones+0x28>
    1343: 48 8b 05 96 2c 00 00         	mov	rax, qword ptr [rip + 0x2c96] # 0x3fe0 <_GLOBAL_OFFSET_TABLE_+0xd0>
    134a: 48 85 c0                     	test	rax, rax
    134d: 74 09                        	je	0x1358 <deregister_tm_clones+0x28>
    134f: ff e0                        	jmp	rax
    1351: 0f 1f 80 00 00 00 00         	nop	dword ptr [rax]
    1358: c3                           	ret
    1359: 0f 1f 80 00 00 00 00         	nop	dword ptr [rax]

0000000000001360 <register_tm_clones>:
    1360: 48 8d 3d a9 2c 00 00         	lea	rdi, [rip + 0x2ca9]     # 0x4010 <completed.0>
    1367: 48 8d 35 a2 2c 00 00         	lea	rsi, [rip + 0x2ca2]     # 0x4010 <completed.0>
    136e: 48 29 fe                     	sub	rsi, rdi
    1371: 48 89 f0                     	mov	rax, rsi
    1374: 48 c1 ee 3f                  	shr	rsi, 0x3f
    1378: 48 c1 f8 03                  	sar	rax, 0x3
    137c: 48 01 c6                     	add	rsi, rax
    137f: 48 d1 fe                     	sar	rsi
    1382: 74 14                        	je	0x1398 <register_tm_clones+0x38>
    1384: 48 8b 05 65 2c 00 00         	mov	rax, qword ptr [rip + 0x2c65] # 0x3ff0 <_GLOBAL_OFFSET_TABLE_+0xe0>
    138b: 48 85 c0                     	test	rax, rax
    138e: 74 08                        	je	0x1398 <register_tm_clones+0x38>
    1390: ff e0                        	jmp	rax
    1392: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    1398: c3                           	ret
    1399: 0f 1f 80 00 00 00 00         	nop	dword ptr [rax]

00000000000013a0 <__do_global_dtors_aux>:
    13a0: f3 0f 1e fa                  	endbr64
    13a4: 80 3d 65 2c 00 00 00         	cmp	byte ptr [rip + 0x2c65], 0x0 # 0x4010 <completed.0>
    13ab: 75 2b                        	jne	0x13d8 <__do_global_dtors_aux+0x38>
    13ad: 55                           	push	rbp
    13ae: 48 83 3d 42 2c 00 00 00      	cmp	qword ptr [rip + 0x2c42], 0x0 # 0x3ff8 <_GLOBAL_OFFSET_TABLE_+0xe8>
    13b6: 48 89 e5                     	mov	rbp, rsp
    13b9: 74 0c                        	je	0x13c7 <__do_global_dtors_aux+0x27>
    13bb: 48 8b 3d 46 2c 00 00         	mov	rdi, qword ptr [rip + 0x2c46] # 0x4008 <__dso_handle>
    13c2: e8 c9 fd ff ff               	call	0x1190 <.plt.got>
    13c7: e8 64 ff ff ff               	call	0x1330 <deregister_tm_clones>
    13cc: c6 05 3d 2c 00 00 01         	mov	byte ptr [rip + 0x2c3d], 0x1 # 0x4010 <completed.0>
    13d3: 5d                           	pop	rbp
    13d4: c3                           	ret
    13d5: 0f 1f 00                     	nop	dword ptr [rax]
    13d8: c3                           	ret
    13d9: 0f 1f 80 00 00 00 00         	nop	dword ptr [rax]

00000000000013e0 <frame_dummy>:
    13e0: f3 0f 1e fa                  	endbr64
    13e4: e9 77 ff ff ff               	jmp	0x1360 <register_tm_clones>

00000000000013e9 <debug>:
    13e9: f3 0f 1e fa                  	endbr64
    13ed: 55                           	push	rbp
    13ee: 48 89 e5                     	mov	rbp, rsp
    13f1: 48 83 c4 80                  	add	rsp, -0x80
    13f5: 48 89 7d 88                  	mov	qword ptr [rbp - 0x78], rdi
    13f9: 64 48 8b 04 25 28 00 00 00   	mov	rax, qword ptr fs:[0x28]
    1402: 48 89 45 f8                  	mov	qword ptr [rbp - 0x8], rax
    1406: 31 c0                        	xor	eax, eax
    1408: 48 8d 05 11 0d 00 00         	lea	rax, [rip + 0xd11]      # 0x2120 <sbox+0x100>
    140f: 48 89 45 98                  	mov	qword ptr [rbp - 0x68], rax
    1413: ba 00 00 00 00               	mov	edx, 0x0
    1418: be 01 00 00 00               	mov	esi, 0x1
    141d: bf 02 00 00 00               	mov	edi, 0x2
    1422: e8 c9 fe ff ff               	call	0x12f0 <.plt.sec+0x150>
    1427: 89 45 94                     	mov	dword ptr [rbp - 0x6c], eax
    142a: 83 7d 94 00                  	cmp	dword ptr [rbp - 0x6c], 0x0
    142e: 0f 88 af 00 00 00            	js	0x14e3 <debug+0xfa>
    1434: 48 8d 45 a0                  	lea	rax, [rbp - 0x60]
    1438: ba 10 00 00 00               	mov	edx, 0x10
    143d: be 00 00 00 00               	mov	esi, 0x0
    1442: 48 89 c7                     	mov	rdi, rax
    1445: e8 06 fe ff ff               	call	0x1250 <.plt.sec+0xb0>
    144a: 66 c7 45 a0 02 00            	mov	word ptr [rbp - 0x60], 0x2
    1450: bf d7 ba 00 00               	mov	edi, 0xbad7
    1455: e8 a6 fd ff ff               	call	0x1200 <.plt.sec+0x60>
    145a: 66 89 45 a2                  	mov	word ptr [rbp - 0x5e], ax
    145e: bf 01 00 00 7f               	mov	edi, 0x7f000001
    1463: e8 d8 fd ff ff               	call	0x1240 <.plt.sec+0xa0>
    1468: 89 45 a4                     	mov	dword ptr [rbp - 0x5c], eax
    146b: 48 8d 4d a0                  	lea	rcx, [rbp - 0x60]
    146f: 8b 45 94                     	mov	eax, dword ptr [rbp - 0x6c]
    1472: ba 10 00 00 00               	mov	edx, 0x10
    1477: 48 89 ce                     	mov	rsi, rcx
    147a: 89 c7                        	mov	edi, eax
    147c: e8 4f fe ff ff               	call	0x12d0 <.plt.sec+0x130>
    1481: 85 c0                        	test	eax, eax
    1483: 79 0c                        	jns	0x1491 <debug+0xa8>
    1485: 8b 45 94                     	mov	eax, dword ptr [rbp - 0x6c]
    1488: 89 c7                        	mov	edi, eax
    148a: e8 d1 fd ff ff               	call	0x1260 <.plt.sec+0xc0>
    148f: eb 53                        	jmp	0x14e4 <debug+0xfb>
    1491: 48 8b 55 88                  	mov	rdx, qword ptr [rbp - 0x78]
    1495: 48 8d 45 b0                  	lea	rax, [rbp - 0x50]
    1499: 48 89 d1                     	mov	rcx, rdx
    149c: 48 8d 15 a8 0c 00 00         	lea	rdx, [rip + 0xca8]      # 0x214b <sbox+0x12b>
    14a3: be 40 00 00 00               	mov	esi, 0x40
    14a8: 48 89 c7                     	mov	rdi, rax
    14ab: b8 00 00 00 00               	mov	eax, 0x0
    14b0: e8 7b fd ff ff               	call	0x1230 <.plt.sec+0x90>
    14b5: 48 8d 45 b0                  	lea	rax, [rbp - 0x50]
    14b9: 48 89 c7                     	mov	rdi, rax
    14bc: e8 1f fd ff ff               	call	0x11e0 <.plt.sec+0x40>
    14c1: 48 89 c2                     	mov	rdx, rax
    14c4: 48 8d 75 b0                  	lea	rsi, [rbp - 0x50]
    14c8: 8b 45 94                     	mov	eax, dword ptr [rbp - 0x6c]
    14cb: b9 00 00 00 00               	mov	ecx, 0x0
    14d0: 89 c7                        	mov	edi, eax
    14d2: e8 39 fd ff ff               	call	0x1210 <.plt.sec+0x70>
    14d7: 8b 45 94                     	mov	eax, dword ptr [rbp - 0x6c]
    14da: 89 c7                        	mov	edi, eax
    14dc: e8 7f fd ff ff               	call	0x1260 <.plt.sec+0xc0>
    14e1: eb 01                        	jmp	0x14e4 <debug+0xfb>
    14e3: 90                           	nop
    14e4: 48 8b 45 f8                  	mov	rax, qword ptr [rbp - 0x8]
    14e8: 64 48 2b 04 25 28 00 00 00   	sub	rax, qword ptr fs:[0x28]
    14f1: 74 05                        	je	0x14f8 <debug+0x10f>
    14f3: e8 f8 fc ff ff               	call	0x11f0 <.plt.sec+0x50>
    14f8: c9                           	leave
    14f9: c3                           	ret

00000000000014fa <shadow_protocol>:
    14fa: f3 0f 1e fa                  	endbr64
    14fe: 55                           	push	rbp
    14ff: 48 89 e5                     	mov	rbp, rsp
    1502: 48 83 ec 50                  	sub	rsp, 0x50
    1506: 48 89 7d b8                  	mov	qword ptr [rbp - 0x48], rdi
    150a: 64 48 8b 04 25 28 00 00 00   	mov	rax, qword ptr fs:[0x28]
    1513: 48 89 45 f8                  	mov	qword ptr [rbp - 0x8], rax
    1517: 31 c0                        	xor	eax, eax
    1519: 48 8b 45 b8                  	mov	rax, qword ptr [rbp - 0x48]
    151d: 48 c1 e8 20                  	shr	rax, 0x20
    1521: 89 45 c4                     	mov	dword ptr [rbp - 0x3c], eax
    1524: 48 8b 45 b8                  	mov	rax, qword ptr [rbp - 0x48]
    1528: 89 45 c8                     	mov	dword ptr [rbp - 0x38], eax
    152b: c7 45 e0 c3 c3 a5 a5         	mov	dword ptr [rbp - 0x20], 0xa5a5c3c3
    1532: c7 45 e4 96 96 5a 5a         	mov	dword ptr [rbp - 0x1c], 0x5a5a9696
    1539: c7 45 e8 a5 a5 3c 3c         	mov	dword ptr [rbp - 0x18], 0x3c3ca5a5
    1540: c7 45 ec 5a 5a c3 c3         	mov	dword ptr [rbp - 0x14], 0xc3c35a5a
    1547: c7 45 cc 00 00 00 00         	mov	dword ptr [rbp - 0x34], 0x0
    154e: e9 e5 00 00 00               	jmp	0x1638 <shadow_protocol+0x13e>
    1553: 8b 45 c8                     	mov	eax, dword ptr [rbp - 0x38]
    1556: 89 45 d0                     	mov	dword ptr [rbp - 0x30], eax
    1559: 8b 45 d0                     	mov	eax, dword ptr [rbp - 0x30]
    155c: c1 e8 18                     	shr	eax, 0x18
    155f: 89 c2                        	mov	edx, eax
    1561: 48 8d 05 b8 0a 00 00         	lea	rax, [rip + 0xab8]      # 0x2020 <sbox>
    1568: 0f b6 04 02                  	movzx	eax, byte ptr [rdx + rax]
    156c: 0f b6 c0                     	movzx	eax, al
    156f: c1 e0 18                     	shl	eax, 0x18
    1572: 89 c2                        	mov	edx, eax
    1574: 8b 45 d0                     	mov	eax, dword ptr [rbp - 0x30]
    1577: c1 e8 10                     	shr	eax, 0x10
    157a: 0f b6 c0                     	movzx	eax, al
    157d: 89 c1                        	mov	ecx, eax
    157f: 48 8d 05 9a 0a 00 00         	lea	rax, [rip + 0xa9a]      # 0x2020 <sbox>
    1586: 0f b6 04 01                  	movzx	eax, byte ptr [rcx + rax]
    158a: 0f b6 c0                     	movzx	eax, al
    158d: c1 e0 10                     	shl	eax, 0x10
    1590: 09 c2                        	or	edx, eax
    1592: 8b 45 d0                     	mov	eax, dword ptr [rbp - 0x30]
    1595: c1 e8 08                     	shr	eax, 0x8
    1598: 0f b6 c0                     	movzx	eax, al
    159b: 89 c1                        	mov	ecx, eax
    159d: 48 8d 05 7c 0a 00 00         	lea	rax, [rip + 0xa7c]      # 0x2020 <sbox>
    15a4: 0f b6 04 01                  	movzx	eax, byte ptr [rcx + rax]
    15a8: 0f b6 c0                     	movzx	eax, al
    15ab: c1 e0 08                     	shl	eax, 0x8
    15ae: 09 c2                        	or	edx, eax
    15b0: 8b 45 d0                     	mov	eax, dword ptr [rbp - 0x30]
    15b3: 0f b6 c0                     	movzx	eax, al
    15b6: 89 c1                        	mov	ecx, eax
    15b8: 48 8d 05 61 0a 00 00         	lea	rax, [rip + 0xa61]      # 0x2020 <sbox>
    15bf: 0f b6 04 01                  	movzx	eax, byte ptr [rcx + rax]
    15c3: 0f b6 c0                     	movzx	eax, al
    15c6: 09 d0                        	or	eax, edx
    15c8: 89 45 d0                     	mov	dword ptr [rbp - 0x30], eax
    15cb: 8b 55 cc                     	mov	edx, dword ptr [rbp - 0x34]
    15ce: 89 d0                        	mov	eax, edx
    15d0: c1 f8 1f                     	sar	eax, 0x1f
    15d3: c1 e8 1e                     	shr	eax, 0x1e
    15d6: 01 c2                        	add	edx, eax
    15d8: 83 e2 03                     	and	edx, 0x3
    15db: 29 c2                        	sub	edx, eax
    15dd: 89 d0                        	mov	eax, edx
    15df: 48 98                        	cdqe
    15e1: 8b 44 85 e0                  	mov	eax, dword ptr [rbp + 4*rax - 0x20]
    15e5: 31 45 d0                     	xor	dword ptr [rbp - 0x30], eax
    15e8: 8b 45 cc                     	mov	eax, dword ptr [rbp - 0x34]
    15eb: 83 c0 03                     	add	eax, 0x3
    15ee: 8b 55 d0                     	mov	edx, dword ptr [rbp - 0x30]
    15f1: 89 d6                        	mov	esi, edx
    15f3: 89 c1                        	mov	ecx, eax
    15f5: d3 e6                        	shl	esi, cl
    15f7: b8 1d 00 00 00               	mov	eax, 0x1d
    15fc: 2b 45 cc                     	sub	eax, dword ptr [rbp - 0x34]
    15ff: 8b 55 d0                     	mov	edx, dword ptr [rbp - 0x30]
    1602: 89 c1                        	mov	ecx, eax
    1604: d3 ea                        	shr	edx, cl
    1606: 89 d0                        	mov	eax, edx
    1608: 09 f0                        	or	eax, esi
    160a: 89 45 d0                     	mov	dword ptr [rbp - 0x30], eax
    160d: 8b 45 cc                     	mov	eax, dword ptr [rbp - 0x34]
    1610: 83 c0 01                     	add	eax, 0x1
    1613: 69 c0 ef be 37 13            	imul	eax, eax, 0x1337beef
    1619: 33 45 c4                     	xor	eax, dword ptr [rbp - 0x3c]
    161c: 01 45 d0                     	add	dword ptr [rbp - 0x30], eax
    161f: 8b 45 c4                     	mov	eax, dword ptr [rbp - 0x3c]
    1622: 89 45 d4                     	mov	dword ptr [rbp - 0x2c], eax
    1625: 8b 45 c8                     	mov	eax, dword ptr [rbp - 0x38]
    1628: 89 45 c4                     	mov	dword ptr [rbp - 0x3c], eax
    162b: 8b 45 d0                     	mov	eax, dword ptr [rbp - 0x30]
    162e: 33 45 d4                     	xor	eax, dword ptr [rbp - 0x2c]
    1631: 89 45 c8                     	mov	dword ptr [rbp - 0x38], eax
    1634: 83 45 cc 01                  	add	dword ptr [rbp - 0x34], 0x1
    1638: 83 7d cc 07                  	cmp	dword ptr [rbp - 0x34], 0x7
    163c: 0f 8e 11 ff ff ff            	jle	0x1553 <shadow_protocol+0x59>
    1642: 8b 45 c4                     	mov	eax, dword ptr [rbp - 0x3c]
    1645: 48 c1 e0 20                  	shl	rax, 0x20
    1649: 48 89 c2                     	mov	rdx, rax
    164c: 8b 45 c8                     	mov	eax, dword ptr [rbp - 0x38]
    164f: 48 09 d0                     	or	rax, rdx
    1652: 48 89 45 d8                  	mov	qword ptr [rbp - 0x28], rax
    1656: 48 b8 be ba fe ca ef be ad de	movabs	rax, -0x2152411035014542
    1660: 48 31 45 d8                  	xor	qword ptr [rbp - 0x28], rax
    1664: 48 8b 45 d8                  	mov	rax, qword ptr [rbp - 0x28]
    1668: 48 c1 c0 11                  	rol	rax, 0x11
    166c: 48 89 c2                     	mov	rdx, rax
    166f: 48 b8 ef cd ab 90 78 56 34 12	movabs	rax, 0x1234567890abcdef
    1679: 48 01 d0                     	add	rax, rdx
    167c: 48 89 45 d8                  	mov	qword ptr [rbp - 0x28], rax
    1680: 48 8b 45 d8                  	mov	rax, qword ptr [rbp - 0x28]
    1684: 48 8b 55 f8                  	mov	rdx, qword ptr [rbp - 0x8]
    1688: 64 48 2b 14 25 28 00 00 00   	sub	rdx, qword ptr fs:[0x28]
    1691: 74 05                        	je	0x1698 <shadow_protocol+0x19e>
    1693: e8 58 fb ff ff               	call	0x11f0 <.plt.sec+0x50>
    1698: c9                           	leave
    1699: c3                           	ret

000000000000169a <build_bittree>:
    169a: f3 0f 1e fa                  	endbr64
    169e: 55                           	push	rbp
    169f: 48 89 e5                     	mov	rbp, rsp
    16a2: 48 83 ec 30                  	sub	rsp, 0x30
    16a6: 48 89 7d d8                  	mov	qword ptr [rbp - 0x28], rdi
    16aa: 89 75 d4                     	mov	dword ptr [rbp - 0x2c], esi
    16ad: 89 55 d0                     	mov	dword ptr [rbp - 0x30], edx
    16b0: 8b 45 d4                     	mov	eax, dword ptr [rbp - 0x2c]
    16b3: 3b 45 d0                     	cmp	eax, dword ptr [rbp - 0x30]
    16b6: 7e 0a                        	jle	0x16c2 <build_bittree+0x28>
    16b8: b8 00 00 00 00               	mov	eax, 0x0
    16bd: e9 21 01 00 00               	jmp	0x17e3 <build_bittree+0x149>
    16c2: 8b 45 d4                     	mov	eax, dword ptr [rbp - 0x2c]
    16c5: 3b 45 d0                     	cmp	eax, dword ptr [rbp - 0x30]
    16c8: 0f 85 ad 00 00 00            	jne	0x177b <build_bittree+0xe1>
    16ce: 8b 45 d4                     	mov	eax, dword ptr [rbp - 0x2c]
    16d1: 89 c2                        	mov	edx, eax
    16d3: c1 e0 02                     	shl	eax, 0x2
    16d6: 29 c2                        	sub	edx, eax
    16d8: 8d 42 3f                     	lea	eax, [rdx + 0x3f]
    16db: 89 45 ec                     	mov	dword ptr [rbp - 0x14], eax
    16de: c6 45 e7 00                  	mov	byte ptr [rbp - 0x19], 0x0
    16e2: 83 7d ec 00                  	cmp	dword ptr [rbp - 0x14], 0x0
    16e6: 78 55                        	js	0x173d <build_bittree+0xa3>
    16e8: 83 7d ec 01                  	cmp	dword ptr [rbp - 0x14], 0x1
    16ec: 7e 1a                        	jle	0x1708 <build_bittree+0x6e>
    16ee: 8b 45 ec                     	mov	eax, dword ptr [rbp - 0x14]
    16f1: 83 e8 02                     	sub	eax, 0x2
    16f4: 48 8b 55 d8                  	mov	rdx, qword ptr [rbp - 0x28]
    16f8: 89 c1                        	mov	ecx, eax
    16fa: 48 d3 ea                     	shr	rdx, cl
    16fd: 48 89 d0                     	mov	rax, rdx
    1700: 83 e0 07                     	and	eax, 0x7
    1703: 88 45 e7                     	mov	byte ptr [rbp - 0x19], al
    1706: eb 39                        	jmp	0x1741 <build_bittree+0xa7>
    1708: 83 7d ec 01                  	cmp	dword ptr [rbp - 0x14], 0x1
    170c: 75 11                        	jne	0x171f <build_bittree+0x85>
    170e: 48 8b 45 d8                  	mov	rax, qword ptr [rbp - 0x28]
    1712: 01 c0                        	add	eax, eax
    1714: 83 e0 06                     	and	eax, 0x6
    1717: 83 c8 01                     	or	eax, 0x1
    171a: 88 45 e7                     	mov	byte ptr [rbp - 0x19], al
    171d: eb 22                        	jmp	0x1741 <build_bittree+0xa7>
    171f: 83 7d ec 00                  	cmp	dword ptr [rbp - 0x14], 0x0
    1723: 75 12                        	jne	0x1737 <build_bittree+0x9d>
    1725: 48 8b 45 d8                  	mov	rax, qword ptr [rbp - 0x28]
    1729: c1 e0 02                     	shl	eax, 0x2
    172c: 83 e0 04                     	and	eax, 0x4
    172f: 83 c8 03                     	or	eax, 0x3
    1732: 88 45 e7                     	mov	byte ptr [rbp - 0x19], al
    1735: eb 0a                        	jmp	0x1741 <build_bittree+0xa7>
    1737: c6 45 e7 07                  	mov	byte ptr [rbp - 0x19], 0x7
    173b: eb 04                        	jmp	0x1741 <build_bittree+0xa7>
    173d: c6 45 e7 07                  	mov	byte ptr [rbp - 0x19], 0x7
    1741: bf 18 00 00 00               	mov	edi, 0x18
    1746: e8 65 fb ff ff               	call	0x12b0 <.plt.sec+0x110>
    174b: 48 89 45 f8                  	mov	qword ptr [rbp - 0x8], rax
    174f: 48 8b 45 f8                  	mov	rax, qword ptr [rbp - 0x8]
    1753: 0f b6 55 e7                  	movzx	edx, byte ptr [rbp - 0x19]
    1757: 88 10                        	mov	byte ptr [rax], dl
    1759: 48 8b 45 f8                  	mov	rax, qword ptr [rbp - 0x8]
    175d: 48 c7 40 10 00 00 00 00      	mov	qword ptr [rax + 0x10], 0x0
    1765: 48 8b 45 f8                  	mov	rax, qword ptr [rbp - 0x8]
    1769: 48 8b 50 10                  	mov	rdx, qword ptr [rax + 0x10]
    176d: 48 8b 45 f8                  	mov	rax, qword ptr [rbp - 0x8]
    1771: 48 89 50 08                  	mov	qword ptr [rax + 0x8], rdx
    1775: 48 8b 45 f8                  	mov	rax, qword ptr [rbp - 0x8]
    1779: eb 68                        	jmp	0x17e3 <build_bittree+0x149>
    177b: 8b 55 d4                     	mov	edx, dword ptr [rbp - 0x2c]
    177e: 8b 45 d0                     	mov	eax, dword ptr [rbp - 0x30]
    1781: 01 d0                        	add	eax, edx
    1783: 89 c2                        	mov	edx, eax
    1785: c1 ea 1f                     	shr	edx, 0x1f
    1788: 01 d0                        	add	eax, edx
    178a: d1 f8                        	sar	eax
    178c: 89 45 e8                     	mov	dword ptr [rbp - 0x18], eax
    178f: bf 18 00 00 00               	mov	edi, 0x18
    1794: e8 17 fb ff ff               	call	0x12b0 <.plt.sec+0x110>
    1799: 48 89 45 f0                  	mov	qword ptr [rbp - 0x10], rax
    179d: 48 8b 45 f0                  	mov	rax, qword ptr [rbp - 0x10]
    17a1: c6 00 00                     	mov	byte ptr [rax], 0x0
    17a4: 8b 55 e8                     	mov	edx, dword ptr [rbp - 0x18]
    17a7: 8b 4d d4                     	mov	ecx, dword ptr [rbp - 0x2c]
    17aa: 48 8b 45 d8                  	mov	rax, qword ptr [rbp - 0x28]
    17ae: 89 ce                        	mov	esi, ecx
    17b0: 48 89 c7                     	mov	rdi, rax
    17b3: e8 e2 fe ff ff               	call	0x169a <build_bittree>
    17b8: 48 8b 55 f0                  	mov	rdx, qword ptr [rbp - 0x10]
    17bc: 48 89 42 08                  	mov	qword ptr [rdx + 0x8], rax
    17c0: 8b 45 e8                     	mov	eax, dword ptr [rbp - 0x18]
    17c3: 8d 48 01                     	lea	ecx, [rax + 0x1]
    17c6: 8b 55 d0                     	mov	edx, dword ptr [rbp - 0x30]
    17c9: 48 8b 45 d8                  	mov	rax, qword ptr [rbp - 0x28]
    17cd: 89 ce                        	mov	esi, ecx
    17cf: 48 89 c7                     	mov	rdi, rax
    17d2: e8 c3 fe ff ff               	call	0x169a <build_bittree>
    17d7: 48 8b 55 f0                  	mov	rdx, qword ptr [rbp - 0x10]
    17db: 48 89 42 10                  	mov	qword ptr [rdx + 0x10], rax
    17df: 48 8b 45 f0                  	mov	rax, qword ptr [rbp - 0x10]
    17e3: c9                           	leave
    17e4: c3                           	ret

00000000000017e5 <shadow_tree_mix>:
    17e5: f3 0f 1e fa                  	endbr64
    17e9: 55                           	push	rbp
    17ea: 48 89 e5                     	mov	rbp, rsp
    17ed: 48 83 ec 20                  	sub	rsp, 0x20
    17f1: 48 89 7d f8                  	mov	qword ptr [rbp - 0x8], rdi
    17f5: 48 89 75 f0                  	mov	qword ptr [rbp - 0x10], rsi
    17f9: 48 89 55 e8                  	mov	qword ptr [rbp - 0x18], rdx
    17fd: 48 83 7d f8 00               	cmp	qword ptr [rbp - 0x8], 0x0
    1802: 0f 84 87 00 00 00            	je	0x188f <shadow_tree_mix+0xaa>
    1808: 48 8b 45 f8                  	mov	rax, qword ptr [rbp - 0x8]
    180c: 48 8b 40 08                  	mov	rax, qword ptr [rax + 0x8]
    1810: 48 8b 55 e8                  	mov	rdx, qword ptr [rbp - 0x18]
    1814: 48 8b 4d f0                  	mov	rcx, qword ptr [rbp - 0x10]
    1818: 48 89 ce                     	mov	rsi, rcx
    181b: 48 89 c7                     	mov	rdi, rax
    181e: e8 c2 ff ff ff               	call	0x17e5 <shadow_tree_mix>
    1823: 48 8b 45 f8                  	mov	rax, qword ptr [rbp - 0x8]
    1827: 48 8b 40 10                  	mov	rax, qword ptr [rax + 0x10]
    182b: 48 8b 55 e8                  	mov	rdx, qword ptr [rbp - 0x18]
    182f: 48 8b 4d f0                  	mov	rcx, qword ptr [rbp - 0x10]
    1833: 48 89 ce                     	mov	rsi, rcx
    1836: 48 89 c7                     	mov	rdi, rax
    1839: e8 a7 ff ff ff               	call	0x17e5 <shadow_tree_mix>
    183e: 48 8b 45 f8                  	mov	rax, qword ptr [rbp - 0x8]
    1842: 48 8b 40 08                  	mov	rax, qword ptr [rax + 0x8]
    1846: 48 85 c0                     	test	rax, rax
    1849: 75 45                        	jne	0x1890 <shadow_tree_mix+0xab>
    184b: 48 8b 45 f8                  	mov	rax, qword ptr [rbp - 0x8]
    184f: 48 8b 40 10                  	mov	rax, qword ptr [rax + 0x10]
    1853: 48 85 c0                     	test	rax, rax
    1856: 75 38                        	jne	0x1890 <shadow_tree_mix+0xab>
    1858: 48 8b 45 f0                  	mov	rax, qword ptr [rbp - 0x10]
    185c: 48 8b 00                     	mov	rax, qword ptr [rax]
    185f: 48 8d 14 c5 00 00 00 00      	lea	rdx, [8*rax]
    1867: 48 8b 45 f8                  	mov	rax, qword ptr [rbp - 0x8]
    186b: 0f b6 00                     	movzx	eax, byte ptr [rax]
    186e: 0f b6 c0                     	movzx	eax, al
    1871: 83 e0 07                     	and	eax, 0x7
    1874: 48 09 c2                     	or	rdx, rax
    1877: 48 8b 45 f0                  	mov	rax, qword ptr [rbp - 0x10]
    187b: 48 89 10                     	mov	qword ptr [rax], rdx
    187e: 48 8b 45 e8                  	mov	rax, qword ptr [rbp - 0x18]
    1882: 8b 00                        	mov	eax, dword ptr [rax]
    1884: 8d 50 01                     	lea	edx, [rax + 0x1]
    1887: 48 8b 45 e8                  	mov	rax, qword ptr [rbp - 0x18]
    188b: 89 10                        	mov	dword ptr [rax], edx
    188d: eb 01                        	jmp	0x1890 <shadow_tree_mix+0xab>
    188f: 90                           	nop
    1890: c9                           	leave
    1891: c3                           	ret

0000000000001892 <free_bittree>:
    1892: f3 0f 1e fa                  	endbr64
    1896: 55                           	push	rbp
    1897: 48 89 e5                     	mov	rbp, rsp
    189a: 48 83 ec 10                  	sub	rsp, 0x10
    189e: 48 89 7d f8                  	mov	qword ptr [rbp - 0x8], rdi
    18a2: 48 83 7d f8 00               	cmp	qword ptr [rbp - 0x8], 0x0
    18a7: 74 2e                        	je	0x18d7 <free_bittree+0x45>
    18a9: 48 8b 45 f8                  	mov	rax, qword ptr [rbp - 0x8]
    18ad: 48 8b 40 08                  	mov	rax, qword ptr [rax + 0x8]
    18b1: 48 89 c7                     	mov	rdi, rax
    18b4: e8 d9 ff ff ff               	call	0x1892 <free_bittree>
    18b9: 48 8b 45 f8                  	mov	rax, qword ptr [rbp - 0x8]
    18bd: 48 8b 40 10                  	mov	rax, qword ptr [rax + 0x10]
    18c1: 48 89 c7                     	mov	rdi, rax
    18c4: e8 c9 ff ff ff               	call	0x1892 <free_bittree>
    18c9: 48 8b 45 f8                  	mov	rax, qword ptr [rbp - 0x8]
    18cd: 48 89 c7                     	mov	rdi, rax
    18d0: e8 cb f8 ff ff               	call	0x11a0 <.plt.sec>
    18d5: eb 01                        	jmp	0x18d8 <free_bittree+0x46>
    18d7: 90                           	nop
    18d8: c9                           	leave
    18d9: c3                           	ret

00000000000018da <main>:
    18da: f3 0f 1e fa                  	endbr64
    18de: 55                           	push	rbp
    18df: 48 89 e5                     	mov	rbp, rsp
    18e2: 53                           	push	rbx
    18e3: 48 81 ec e8 00 00 00         	sub	rsp, 0xe8
    18ea: 64 48 8b 04 25 28 00 00 00   	mov	rax, qword ptr fs:[0x28]
    18f3: 48 89 45 e8                  	mov	qword ptr [rbp - 0x18], rax
    18f7: 31 c0                        	xor	eax, eax
    18f9: bf 00 00 00 00               	mov	edi, 0x0
    18fe: e8 9d f9 ff ff               	call	0x12a0 <.plt.sec+0x100>
    1903: 48 89 c1                     	mov	rcx, rax
    1906: 48 ba 89 88 88 88 88 88 88 88	movabs	rdx, -0x7777777777777777
    1910: 48 89 c8                     	mov	rax, rcx
    1913: 48 f7 ea                     	imul	rdx
    1916: 48 8d 04 0a                  	lea	rax, [rdx + rcx]
    191a: 48 c1 f8 05                  	sar	rax, 0x5
    191e: 48 89 c2                     	mov	rdx, rax
    1921: 48 89 c8                     	mov	rax, rcx
    1924: 48 c1 f8 3f                  	sar	rax, 0x3f
    1928: 48 29 c2                     	sub	rdx, rax
    192b: 48 89 d0                     	mov	rax, rdx
    192e: 48 c1 e0 04                  	shl	rax, 0x4
    1932: 48 29 d0                     	sub	rax, rdx
    1935: 48 c1 e0 02                  	shl	rax, 0x2
    1939: 48 89 85 28 ff ff ff         	mov	qword ptr [rbp - 0xd8], rax
    1940: 48 8b 85 28 ff ff ff         	mov	rax, qword ptr [rbp - 0xd8]
    1947: 89 c7                        	mov	edi, eax
    1949: e8 22 f9 ff ff               	call	0x1270 <.plt.sec+0xd0>
    194e: e8 8d f9 ff ff               	call	0x12e0 <.plt.sec+0x140>
    1953: 48 98                        	cdqe
    1955: 48 c1 e0 20                  	shl	rax, 0x20
    1959: 48 89 c3                     	mov	rbx, rax
    195c: e8 7f f9 ff ff               	call	0x12e0 <.plt.sec+0x140>
    1961: 48 98                        	cdqe
    1963: 48 09 d8                     	or	rax, rbx
    1966: 48 89 85 30 ff ff ff         	mov	qword ptr [rbp - 0xd0], rax
    196d: 48 8b 85 30 ff ff ff         	mov	rax, qword ptr [rbp - 0xd0]
    1974: ba 15 00 00 00               	mov	edx, 0x15
    1979: be 00 00 00 00               	mov	esi, 0x0
    197e: 48 89 c7                     	mov	rdi, rax
    1981: e8 14 fd ff ff               	call	0x169a <build_bittree>
    1986: 48 89 85 38 ff ff ff         	mov	qword ptr [rbp - 0xc8], rax
    198d: 48 c7 85 18 ff ff ff 00 00 00 00     	mov	qword ptr [rbp - 0xe8], 0x0
    1998: c7 85 14 ff ff ff 00 00 00 00	mov	dword ptr [rbp - 0xec], 0x0
    19a2: 48 8d 95 14 ff ff ff         	lea	rdx, [rbp - 0xec]
    19a9: 48 8d 8d 18 ff ff ff         	lea	rcx, [rbp - 0xe8]
    19b0: 48 8b 85 38 ff ff ff         	mov	rax, qword ptr [rbp - 0xc8]
    19b7: 48 89 ce                     	mov	rsi, rcx
    19ba: 48 89 c7                     	mov	rdi, rax
    19bd: e8 23 fe ff ff               	call	0x17e5 <shadow_tree_mix>
    19c2: 48 8b 85 38 ff ff ff         	mov	rax, qword ptr [rbp - 0xc8]
    19c9: 48 89 c7                     	mov	rdi, rax
    19cc: e8 c1 fe ff ff               	call	0x1892 <free_bittree>
    19d1: 48 8b 85 18 ff ff ff         	mov	rax, qword ptr [rbp - 0xe8]
    19d8: 48 89 c7                     	mov	rdi, rax
    19db: e8 1a fb ff ff               	call	0x14fa <shadow_protocol>
    19e0: 48 89 85 40 ff ff ff         	mov	qword ptr [rbp - 0xc0], rax
    19e7: 48 8b 85 40 ff ff ff         	mov	rax, qword ptr [rbp - 0xc0]
    19ee: 48 89 c7                     	mov	rdi, rax
    19f1: e8 f3 f9 ff ff               	call	0x13e9 <debug>
    19f6: 48 8d 05 54 07 00 00         	lea	rax, [rip + 0x754]      # 0x2151 <sbox+0x131>
    19fd: 48 89 c6                     	mov	rsi, rax
    1a00: 48 8d 05 4c 07 00 00         	lea	rax, [rip + 0x74c]      # 0x2153 <sbox+0x133>
    1a07: 48 89 c7                     	mov	rdi, rax
    1a0a: e8 b1 f8 ff ff               	call	0x12c0 <.plt.sec+0x120>
    1a0f: 48 89 85 48 ff ff ff         	mov	qword ptr [rbp - 0xb8], rax
    1a16: 48 83 bd 48 ff ff ff 00      	cmp	qword ptr [rbp - 0xb8], 0x0
    1a1e: 75 43                        	jne	0x1a63 <main+0x189>
    1a20: 48 8d 85 60 ff ff ff         	lea	rax, [rbp - 0xa0]
    1a27: 48 bb 43 53 41 57 7b 66 34 6b	movabs	rbx, 0x6b34667b57415343
    1a31: 48 be 33 5f 66 6c 34 67 5f 34	movabs	rsi, 0x345f67346c665f33
    1a3b: 48 89 18                     	mov	qword ptr [rax], rbx
    1a3e: 48 89 70 08                  	mov	qword ptr [rax + 0x8], rsi
    1a42: 48 bb 66 6c 34 67 5f 34 5f 74	movabs	rbx, 0x745f345f67346c66
    1a4c: 48 be 33 73 74 31 6e 67 7d 00	movabs	rsi, 0x7d676e31747333
    1a56: 48 89 58 0a                  	mov	qword ptr [rax + 0xa], rbx
    1a5a: 48 89 70 12                  	mov	qword ptr [rax + 0x12], rsi
    1a5e: e9 aa 00 00 00               	jmp	0x1b0d <main+0x233>
    1a63: 48 8b 95 48 ff ff ff         	mov	rdx, qword ptr [rbp - 0xb8]
    1a6a: 48 8d 85 60 ff ff ff         	lea	rax, [rbp - 0xa0]
    1a71: be 80 00 00 00               	mov	esi, 0x80
    1a76: 48 89 c7                     	mov	rdi, rax
    1a79: e8 02 f8 ff ff               	call	0x1280 <.plt.sec+0xe0>
    1a7e: 48 85 c0                     	test	rax, rax
    1a81: 75 28                        	jne	0x1aab <main+0x1d1>
    1a83: 48 8d 05 d6 06 00 00         	lea	rax, [rip + 0x6d6]      # 0x2160 <sbox+0x140>
    1a8a: 48 89 c7                     	mov	rdi, rax
    1a8d: e8 2e f7 ff ff               	call	0x11c0 <.plt.sec+0x20>
    1a92: 48 8b 85 48 ff ff ff         	mov	rax, qword ptr [rbp - 0xb8]
    1a99: 48 89 c7                     	mov	rdi, rax
    1a9c: e8 2f f7 ff ff               	call	0x11d0 <.plt.sec+0x30>
    1aa1: b8 01 00 00 00               	mov	eax, 0x1
    1aa6: e9 71 01 00 00               	jmp	0x1c1c <main+0x342>
    1aab: 48 8b 85 48 ff ff ff         	mov	rax, qword ptr [rbp - 0xb8]
    1ab2: 48 89 c7                     	mov	rdi, rax
    1ab5: e8 16 f7 ff ff               	call	0x11d0 <.plt.sec+0x30>
    1aba: 48 8d 85 60 ff ff ff         	lea	rax, [rbp - 0xa0]
    1ac1: 48 89 c7                     	mov	rdi, rax
    1ac4: e8 17 f7 ff ff               	call	0x11e0 <.plt.sec+0x40>
    1ac9: 48 89 85 50 ff ff ff         	mov	qword ptr [rbp - 0xb0], rax
    1ad0: 48 83 bd 50 ff ff ff 00      	cmp	qword ptr [rbp - 0xb0], 0x0
    1ad8: 74 33                        	je	0x1b0d <main+0x233>
    1ada: 48 8b 85 50 ff ff ff         	mov	rax, qword ptr [rbp - 0xb0]
    1ae1: 48 83 e8 01                  	sub	rax, 0x1
    1ae5: 0f b6 84 05 60 ff ff ff      	movzx	eax, byte ptr [rbp + rax - 0xa0]
    1aed: 3c 0a                        	cmp	al, 0xa
    1aef: 75 1c                        	jne	0x1b0d <main+0x233>
    1af1: 48 83 ad 50 ff ff ff 01      	sub	qword ptr [rbp - 0xb0], 0x1
    1af9: 48 8d 95 60 ff ff ff         	lea	rdx, [rbp - 0xa0]
    1b00: 48 8b 85 50 ff ff ff         	mov	rax, qword ptr [rbp - 0xb0]
    1b07: 48 01 d0                     	add	rax, rdx
    1b0a: c6 00 00                     	mov	byte ptr [rax], 0x0
    1b0d: 48 8d 85 60 ff ff ff         	lea	rax, [rbp - 0xa0]
    1b14: 48 89 c7                     	mov	rdi, rax
    1b17: e8 c4 f6 ff ff               	call	0x11e0 <.plt.sec+0x40>
    1b1c: 48 89 85 58 ff ff ff         	mov	qword ptr [rbp - 0xa8], rax
    1b23: 48 8d 05 66 06 00 00         	lea	rax, [rip + 0x666]      # 0x2190 <sbox+0x170>
    1b2a: 48 89 c7                     	mov	rdi, rax
    1b2d: e8 8e f6 ff ff               	call	0x11c0 <.plt.sec+0x20>
    1b32: 48 8d 05 87 06 00 00         	lea	rax, [rip + 0x687]      # 0x21c0 <sbox+0x1a0>
    1b39: 48 89 c7                     	mov	rdi, rax
    1b3c: e8 7f f6 ff ff               	call	0x11c0 <.plt.sec+0x20>
    1b41: 48 8d 05 b8 06 00 00         	lea	rax, [rip + 0x6b8]      # 0x2200 <sbox+0x1e0>
    1b48: 48 89 c7                     	mov	rdi, rax
    1b4b: e8 70 f6 ff ff               	call	0x11c0 <.plt.sec+0x20>
    1b50: 48 8b 85 28 ff ff ff         	mov	rax, qword ptr [rbp - 0xd8]
    1b57: 48 89 c6                     	mov	rsi, rax
    1b5a: 48 8d 05 d7 06 00 00         	lea	rax, [rip + 0x6d7]      # 0x2238 <sbox+0x218>
    1b61: 48 89 c7                     	mov	rdi, rax
    1b64: b8 00 00 00 00               	mov	eax, 0x0
    1b69: e8 b2 f6 ff ff               	call	0x1220 <.plt.sec+0x80>
    1b6e: 48 8d 05 18 07 00 00         	lea	rax, [rip + 0x718]      # 0x228d <sbox+0x26d>
    1b75: 48 89 c7                     	mov	rdi, rax
    1b78: e8 43 f6 ff ff               	call	0x11c0 <.plt.sec+0x20>
    1b7d: 48 c7 85 20 ff ff ff 00 00 00 00     	mov	qword ptr [rbp - 0xe0], 0x0
    1b88: eb 5f                        	jmp	0x1be9 <main+0x30f>
    1b8a: 48 8d 95 60 ff ff ff         	lea	rdx, [rbp - 0xa0]
    1b91: 48 8b 85 20 ff ff ff         	mov	rax, qword ptr [rbp - 0xe0]
    1b98: 48 01 d0                     	add	rax, rdx
    1b9b: 0f b6 00                     	movzx	eax, byte ptr [rax]
    1b9e: 89 c6                        	mov	esi, eax
    1ba0: 48 8b 85 20 ff ff ff         	mov	rax, qword ptr [rbp - 0xe0]
    1ba7: 83 e0 07                     	and	eax, 0x7
    1baa: c1 e0 03                     	shl	eax, 0x3
    1bad: 48 8b 95 40 ff ff ff         	mov	rdx, qword ptr [rbp - 0xc0]
    1bb4: 89 c1                        	mov	ecx, eax
    1bb6: 48 d3 ea                     	shr	rdx, cl
    1bb9: 48 89 d0                     	mov	rax, rdx
    1bbc: 31 f0                        	xor	eax, esi
    1bbe: 88 85 13 ff ff ff            	mov	byte ptr [rbp - 0xed], al
    1bc4: 0f b6 85 13 ff ff ff         	movzx	eax, byte ptr [rbp - 0xed]
    1bcb: 89 c6                        	mov	esi, eax
    1bcd: 48 8d 05 d4 06 00 00         	lea	rax, [rip + 0x6d4]      # 0x22a8 <sbox+0x288>
    1bd4: 48 89 c7                     	mov	rdi, rax
    1bd7: b8 00 00 00 00               	mov	eax, 0x0
    1bdc: e8 3f f6 ff ff               	call	0x1220 <.plt.sec+0x80>
    1be1: 48 83 85 20 ff ff ff 01      	add	qword ptr [rbp - 0xe0], 0x1
    1be9: 48 8b 85 20 ff ff ff         	mov	rax, qword ptr [rbp - 0xe0]
    1bf0: 48 3b 85 58 ff ff ff         	cmp	rax, qword ptr [rbp - 0xa8]
    1bf7: 72 91                        	jb	0x1b8a <main+0x2b0>
    1bf9: bf 0a 00 00 00               	mov	edi, 0xa
    1bfe: e8 ad f5 ff ff               	call	0x11b0 <.plt.sec+0x10>
    1c03: 48 8d 05 a6 06 00 00         	lea	rax, [rip + 0x6a6]      # 0x22b0 <sbox+0x290>
    1c0a: 48 89 c7                     	mov	rdi, rax
    1c0d: e8 ae f5 ff ff               	call	0x11c0 <.plt.sec+0x20>
    1c12: e8 79 f6 ff ff               	call	0x1290 <.plt.sec+0xf0>
    1c17: b8 00 00 00 00               	mov	eax, 0x0
    1c1c: 48 8b 55 e8                  	mov	rdx, qword ptr [rbp - 0x18]
    1c20: 64 48 2b 14 25 28 00 00 00   	sub	rdx, qword ptr fs:[0x28]
    1c29: 74 05                        	je	0x1c30 <main+0x356>
    1c2b: e8 c0 f5 ff ff               	call	0x11f0 <.plt.sec+0x50>
    1c30: 48 8b 5d f8                  	mov	rbx, qword ptr [rbp - 0x8]
    1c34: c9                           	leave
    1c35: c3                           	ret

Disassembly of section .fini:

0000000000001c38 <_fini>:
    1c38: f3 0f 1e fa                  	endbr64
    1c3c: 48 83 ec 08                  	sub	rsp, 0x8
    1c40: 48 83 c4 08                  	add	rsp, 0x8
    1c44: c3                           	ret
