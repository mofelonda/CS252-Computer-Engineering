		.orig x3000

		LD R0, STRING
		LD R2, TEMP

LOOP		LDR R1, R0, #0
		BRnz, NEXT

		ADD R0, R0, #1
		STR R1, R2, #0
		ADD R2, R2, #1
		BRnzp LOOP

NEXT		LD R3, STRING
		ADD R2, R2, #-1

LOOP2		LDR R1, R2, #0
		BRnz, DISPLAY

		STR R1, R3, #0
		ADD R2, R2, #-1
		ADD R3, R3, #1
		BRnzp LOOP2

DISPLAY		LD R0, STRING
		PUTS

		HALT

STRING		.FILL x5000
TEMP		.FILL x6000