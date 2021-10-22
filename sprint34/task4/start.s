.global _start
_start:
	mov sp, #0xFF
	bl _fact
	
_halt:
	b _halt

	
