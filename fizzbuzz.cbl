 Identification division.
 Program-id. FIZZBUZZ.
 Environment division.
 Data division.
 Working-storage section.
 01 NUM PIC 999.
 01 CT  PIC 999 VALUE 1.
 01 REM PIC 999 VALUE 0.
 01 QUOT PIC 999 VALUE 0.
 PROCEDURE DIVISION.
     
     DISPLAY "ENTER NUMBER : " WITH NO ADVANCING.
     ACCEPT NUM.
       PERFORM UNTIL CT > NUM
         DIVIDE 15 INTO CT GIVING QUOT REMAINDER REM
         IF REM = 0
           THEN
             DISPLAY "FizzBuzz " 
           ELSE
             DIVIDE 3 INTO CT GIVING QUOT REMAINDER REM
             IF REM = 0
               THEN
                 DISPLAY "Fizz " 
               ELSE
                 DIVIDE 5 INTO CT GIVING QUOT REMAINDER REM
                 IF REM = 0
                   THEN
                     DISPLAY "Buzz " 
                   ELSE
                     DISPLAY CT
                 END-IF
             END-IF
         END-IF
         ADD 1 TO CT
       END-PERFORM
      
    
		STOP RUN.
        
