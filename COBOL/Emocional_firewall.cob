       IDENTIFICATION DIVISION.
       PROGRAM-ID. EMOTIONAL-FIREWALL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PORT-NAME     PIC A(15).
       01 PORT-STATE    PIC A(10).
       01 I             PIC 9.

       01 PORT-TABLE.
           05 PORTS OCCURS 5 TIMES.
               10 NAME     PIC A(15).
               10 STATE    PIC A(10).

       PROCEDURE DIVISION.
       BEGIN.
           MOVE "ALEGRIA"     TO NAME(1)
           MOVE "OPEN"        TO STATE(1)
           MOVE "TRISTEZA"    TO NAME(2)
           MOVE "TIMEOUT"     TO STATE(2)
           MOVE "CONFIANCA"   TO NAME(3)
           MOVE "FILTERED"    TO STATE(3)
           MOVE "MEDO"        TO NAME(4)
           MOVE "CLOSED"      TO STATE(4)
           MOVE "CURIOSIDADE" TO NAME(5)
           MOVE "OPEN"        TO STATE(5)

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               DISPLAY ">>> Verificando porta emocional: " NAME(I)
               DISPLAY ">>> Resultado: " STATE(I)
               DISPLAY " "
           END-PERFORM.

           STOP RUN.
