; hello-os
; TAB=4

; The following is a description for a standard FAT12 format floppy disk. this is a comment

		DB		0xeb, 0x4e, 0x90; DB stands for define bytes (or a string of ASCII characters)
		DB		"HELLOIPL"		; You can freely write the name of the boot sector (8 bytes)
		DW		512				; Size of one sector (must be 512), DW stands for define 16-bit (2 bytes) word
		DB		1				; Size of cluster (must be 1 sector)
		DW		1				; Where FAT starts (usually from the first sector)
		DB		2				; Number of FATs (must be 2)
		DW		224				; Size of root directory area (usually 224 entries)
		DW		2880			; Size of this drive (2880 sectors)
		DB		0xf0			; Media type (must be 0xf0)
		DW		9				; Length of FAT region (9 sectors)
		DW		18				; Number of sectors per track (18)
		DW		2				; Number of heads (2)
		DD		0				; Not using partitions, so this must be 0, DD stands for define double-word (32-bit, 4 bytes)
		DD		2880			; Write the drive size again
		DB		0,0,0x29		; It seems good to set this value, though it's not clear
		DD		0xffffffff		; Probably the volume serial number
		DB		"HELLO-OS   "	; Disk name (11 bytes)
		DB		"FAT12   "		; Format name (8 bytes)
		RESB	18				; Reserve 18 bytes for now, RESB stands for reserve. 

; Program body

		DB		0xb8, 0x00, 0x00, 0x8e, 0xd0, 0xbc, 0x00, 0x7c
		DB		0x8e, 0xd8, 0x8e, 0xc0, 0xbe, 0x74, 0x7c, 0x8a
		DB		0x04, 0x83, 0xc6, 0x01, 0x3c, 0x00, 0x74, 0x09
		DB		0xb4, 0x0e, 0xbb, 0x0f, 0x00, 0xcd, 0x10, 0xeb
		DB		0xee, 0xf4, 0xeb, 0xfd

; Message section

		DB		0x0a, 0x0a		; Two line breaks
		DB		"hello, world"	; DB stands for define bytes (or a string of ASCII characters)
		DB		0x0a			; Line break
		DB		0

		RESB	0x1fe-$			; Fill with 0x00 until 0x001fe, $ current # of bytes, then using 0x1fe minus current bytes 

		DB		0x55, 0xaa      ; 0xaa is the last 2 bytes in a disk, it is also the marker for startup program. If missing, then no startup program. 

; The following is a description for parts other than the boot sector.

		DB		0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00
		RESB	4600
		DB		0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00
		RESB	1469432
