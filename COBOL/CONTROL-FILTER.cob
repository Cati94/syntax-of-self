          IDENTIFICATION DIVISION.
       PROGRAM-ID. CONTROL-FILTER.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 EXTERNAL-INPUT         PIC X(50).
       01 USER-AUTONOMY          PIC X(10) VALUE "ATIVA".
       01 CONTROL-FLAG           PIC X VALUE "N".
       01 DEVES-COUNTER          PIC 9 VALUE 0.
       01 TINHAS-COUNTER         PIC 9 VALUE 0.

       PROCEDURE DIVISION.
       START-PROCESS.
           DISPLAY "Verificando entrada externa..."
           ACCEPT EXTERNAL-INPUT

           MOVE 0 TO DEVES-COUNTER
           MOVE 0 TO TINHAS-COUNTER

           INSPECT EXTERNAL-INPUT TALLYING DEVES-COUNTER FOR ALL "DEVES"
           INSPECT EXTERNAL-INPUT TALLYING TINHAS-COUNTER FOR ALL "TINHAS QUE"

           IF DEVES-COUNTER > 0 OR TINHAS-COUNTER > 0
               MOVE "Y" TO CONTROL-FLAG
               PERFORM BLOCK-CONTROL
           ELSE
               DISPLAY "Mensagem aceite com autonomia."
           END-IF

           STOP RUN.

       BLOCK-CONTROL.
           IF USER-AUTONOMY = "ATIVA"
               DISPLAY "⚠️  Controlo identificado. Ignorar ou redirecionar com limites."
           ELSE
               DISPLAY "Autonomia desativada. Ativar AUTONOMY-MODE imediatamente."
           END-IF.
