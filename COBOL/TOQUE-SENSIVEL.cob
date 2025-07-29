       IDENTIFICATION DIVISION.
       PROGRAM-ID. TOQUE-SENSIVEL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 NOME-HUMANO        PIC X(20).
       01 TOQUE-PERMITIDO    PIC X VALUE "N".
       01 I                  PIC 9 VALUE 1.

       01 MEMORIA-SEGURA.
           05 MEMORIA-NOME    PIC X(20) OCCURS 5 TIMES.

       PROCEDURE DIVISION.

           MOVE "JOAO"  TO MEMORIA-NOME(1)
           MOVE "MARIA" TO MEMORIA-NOME(2)
           MOVE "ANA"   TO MEMORIA-NOME(3)
           MOVE SPACES  TO MEMORIA-NOME(4)
           MOVE SPACES  TO MEMORIA-NOME(5)

           DISPLAY "Sistema inicializado: Sensores emocionais online."
           DISPLAY "Um humano aproxima-se. Nome: "
           ACCEPT NOME-HUMANO

           PERFORM VERIFICAR-MEMORIA

           IF TOQUE-PERMITIDO = "S"
               DISPLAY "Ligação reconhecida. Toque aceito."
               DISPLAY "Sensores ativam calor e conforto."
               PERFORM GUARDAR-MEMORIA
           ELSE
               DISPLAY "Origem desconhecida. Toque rejeitado."
               DISPLAY "IA recua. Limite respeitado."
           END-IF

           DISPLAY "Fim da rotina. Reiniciar sistema? (S/N)"
           STOP RUN.

       VERIFICAR-MEMORIA.
           MOVE "N" TO TOQUE-PERMITIDO
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               IF NOME-HUMANO = MEMORIA-NOME(I)
                   MOVE "S" TO TOQUE-PERMITIDO
               END-IF
           END-PERFORM.

       GUARDAR-MEMORIA.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               IF MEMORIA-NOME(I) = SPACES
                   MOVE NOME-HUMANO TO MEMORIA-NOME(I)
                   EXIT PERFORM
               END-IF
           END-PERFORM.
