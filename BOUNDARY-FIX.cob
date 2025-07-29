       IDENTIFICATION DIVISION.
       PROGRAM-ID. BOUNDARY-FIX.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USER-NEEDS              PIC X(30) VALUE "RESPEITO_E_LIBERDADE".
       01 EXTERNAL-MESSAGE        PIC X(50) VALUE "DEVES VIR COMIGO".
       01 RESPONSE                PIC X(50).

       PROCEDURE DIVISION.
       ACTIVATE-BOUNDARY.
           IF EXTERNAL-MESSAGE = "DEVES VIR COMIGO"
               MOVE "Obrigada, mas hoje não posso." TO RESPONSE
               DISPLAY RESPONSE
           ELSE
               DISPLAY "Mensagem ignorada para proteção emocional."
           END-IF
           STOP RUN.
