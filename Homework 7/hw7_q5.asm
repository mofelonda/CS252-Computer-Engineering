.ORIG x3000

	LD R0, INPUT
	LD R1, OUTPUT
	LD R2, SPACE
	LD R7, PERCENT

	NOT R2, R2
	ADD R2, R2, #1

LOOP	LDR R3, R0, #0
	BRnz ENDPUT

	ADD R0, R0, #1
	ADD R4, R3, R2
	BRz SKIP

	STR R3, R1, #0
	ADD R1, R1, #1

SKIP	BRnzp LOOP

ENDPUT	NOT R5, R1

	ADD R5, R5, #1
	LD R2, MAX
	ADD, R4, R0, R2
	ADD, R6, R4, R5
	AND, R3, R3, #0

LOOP2	ADD R6, R6, #-1
	BRn DONE

	STR R7, R1, #0
	ADD R1, R1, #1
	BRnzp LOOP2

DONE	STR R3, R1, #0

	HALT

INPUT	.FILL x5000
OUTPUT	.FILL x5100
SPACE	.FILL x20
PERCENT	.FILL x25
MAX	.FILL x100