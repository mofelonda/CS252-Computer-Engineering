		.orig x3000

		LD R0, Loc1
		AND R1, R1, #0
		ADD R1, R1, #4

LOOP		JSR DivideBy2
		ADD R1, R1, #-1
		BRp LOOP	;Will execute 4 times

		ST R0, Loc2

		HALT

DivideBy2	AND R3, R3, #0
		AND R2, R2, #0
		ADD R2, R2, #-2

LOOP2		ADD R0, R0, R2
		BRn RSHIFT

		ADD R3, R3, #1
		BRnzp LOOP2

RSHIFT		ST R3, RESULT
		LD R0, RESULT
		RET

Loc1		.BLKW 1
Loc2		.BLKW 1
RESULT		.BLKW 1

		.end