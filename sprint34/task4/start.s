.global _start
_start:
	mov sp, #0xFF
	b _halt
	
_halt:
	b _halt

	
