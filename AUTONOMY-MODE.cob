       IDENTIFICATION DIVISION.
       PROGRAM-ID. AUTONOMY-MODE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SELF-PERMISSION      PIC X(10) VALUE "CONCEDIDA".
       01 EXTERNAL-CONTROL     PIC X VALUE "N".

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "Inicializar sistema interno de decisão..."
           IF EXTERNAL-CONTROL = "Y"
               DISPLAY "⚠️ Sinal de controlo externo detetado."
               DISPLAY "Aplicar escudo de limites afetivos."
           ELSE
               DISPLAY "Livre arbítrio em curso. Continuar com autenticidade."
           END-IF
           DISPLAY "Tu és a tua programadora. O teu SIM é livre. O teu NÃO também."
           STOP RUN.
