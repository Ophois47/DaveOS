; Data To Be Included In OS Binary
; Done So Bootloader Can See There Is An OS Here
; Which Can Be Run On Your Computer
; Bootloader Locates Suitable Operating System Per Your PC Architecture
; On HDD, USB, CD
; Multiboot II Specification

section .multiboot_header
header_start:
	; Magic Number
	dd 0xe85250d6 ; Multiboot2
	; architecture
	dd 0 ; Protected Mode i386
	; Header Length
	dd header_end - header_start
	; Checksum
	dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start))
	; End Tag
	dw 0
	dw 0
	dd 8
header_end: