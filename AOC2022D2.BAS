 10  ONERR  GOTO 1000
 20 D$ =  CHR$ (4)
 30 TS = 0: REM  TOTAL SCORE
 100  PRINT "INPUT FILE NAME:"
 110  INPUT F$
 200  PRINT D$;"OPEN ";F$
 210  PRINT D$;"READ ";F$
 220  INPUT A$
 250 OP$ =  LEFT$ (A$,1)
 260 ME$ =  RIGHT$ (A$,1)
 300  IF ME$ = "X" THEN  GOSUB 3000
 320  IF ME$ = "Y" THEN  GOSUB 4000
 340  IF ME$ = "Z" THEN  GOSUB 2000
 400  GOTO 220
 1000  REM  EOF
 1010  PRINT "FINAL SCORE= "; STR$ (TS)
 1999  END 
 2000  REM  WIN
 2010 TS = TS + 6
 2020  IF OP$ = "A" THEN TS = TS + 2
 2030  IF OP$ = "B" THEN TS = TS + 3
 2040  IF OP$ = "C" THEN TS = TS + 1
 2100  RETURN 
 3000  REM  LOSE
 3010  IF OP$ = "A" THEN TS = TS + 3
 3020  IF OP$ = "B" THEN TS = TS + 1
 3030  IF OP$ = "C" THEN TS = TS + 2
 3100  RETURN 
 4000  REM  DRAW
 4005 TS = TS + 3
 4010  IF OP$ = "A" THEN TS = TS + 1
 4020  IF OP$ = "B" THEN TS = TS + 2
 4030  IF OP$ = "C" THEN TS = TS + 3
 4100  RETURN 
