       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBSUM.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WSS-AREA-TRABALHO.
           05  WSS-NUMBER               PIC 9(11).
           05  WSS-SUM                  PIC 9(11).
           05  WSS-IND                  PIC 9(11).
           05  WSS-DIVISION             PIC 9(11).
           05  WSS-REMAINDER            PIC 9(11).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 60 TO WSS-NUMBER.
           PERFORM SUM-FACTORS.
           DISPLAY WSS-SUM.
           STOP RUN.
       
       SUM-FACTORS.
           MOVE ZEROS TO WSS-SUM.
           PERFORM CHECK-FACTOR-AND-SUM
                   VARYING WSS-IND FROM 1 BY 1
                   UNTIL WSS-IND GREATER WSS-NUMBER.
       
       CHECK-FACTOR-AND-SUM.
           DISPLAY WSS-IND.
           DIVIDE WSS-NUMBER BY WSS-IND
                  GIVING WSS-DIVISION REMAINDER WSS-REMAINDER.
       
           IF WSS-REMAINDER EQUAL ZERO
               ADD WSS-IND TO WSS-SUM
           END-IF.
