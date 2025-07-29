       IDENTIFICATION DIVISION.
       PROGRAM-ID. BOUNDARIES-ACTIVATION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 REQUEST-SOURCE      PIC X(20).
       01 REQUEST-CONTENT     PIC X(50).
       01 PERMISSION-GRANTED  PIC X VALUE "N".
       01 MENTAL-STATE        PIC X(20) VALUE "SOBRECARGA".
       01 PHYSICAL-LIMIT      PIC X(20) VALUE "EM RECUPERAÇÃO".
       01 CURRENT-DAY         PIC X(10) VALUE "OCUPADO".
       01 RESPONSE-MESSAGE    PIC X(80).

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "⚠️ Análise de pedido externo em curso..."
           MOVE "FAMILIA" TO REQUEST-SOURCE
           MOVE "Vem já, temos prendas e planos." TO REQUEST-CONTENT

           IF CURRENT-DAY = "OCUPADO"
              OR MENTAL-STATE = "SOBRECARGA"
              OR PHYSICAL-LIMIT = "EM RECUPERAÇÃO"
              MOVE "N" TO PERMISSION-GRANTED
              MOVE "Prioridade à saúde mental. Visita recusada." TO RESPONSE-MESSAGE
           ELSE
              MOVE "S" TO PERMISSION-GRANTED
              MOVE "Disponível para visita com consentimento livre." TO RESPONSE-MESSAGE
           END-IF

           DISPLAY ">>> Fonte do pedido: " REQUEST-SOURCE
           DISPLAY ">>> Conteúdo do pedido: " REQUEST-CONTENT
           DISPLAY ">>> Permissão concedida? " PERMISSION-GRANTED
           DISPLAY ">>> Resposta final: " RESPONSE-MESSAGE

           DISPLAY "✔️ Sistema de limites ativado com sucesso."
           STOP RUN.
