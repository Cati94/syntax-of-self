IDENTIFICATION DIVISION.
PROGRAM-ID. RM-MEMORIAS.

DATA DIVISION.
WORKING-STORAGE SECTION.

01 COR-ESCOLHIDA         PIC X(20).
01 FRASE-SIMBOLICA       PIC X(80).
01 COMANDO-TERMINAL      PIC X(80).

PROCEDURE DIVISION.

DISPLAY "=== UNIDADE DE MEMÓRIAS INICIA ===".
DISPLAY "Escolhe uma cor: AZUL / AMARELO / VERMELHO / VERDE / LILÁS / AZUL-ESCURO / VERDE-ÁGUA".
ACCEPT COR-ESCOLHIDA.

EVALUATE COR-ESCOLHIDA
    WHEN "AZUL"
        MOVE "Dominar o desconhecido é poder pessoal." TO FRASE-SIMBOLICA
        MOVE "RUN learning-mode /solo /valentia" TO COMANDO-TERMINAL
    WHEN "AMARELO"
        MOVE "A luz também mora nos dias simples." TO FRASE-SIMBOLICA
        MOVE "DISPLAY 'LUZ_ATIVA' ON SCREEN" TO COMANDO-TERMINAL
    WHEN "VERMELHO"
        MOVE "Mesmo o fogo aprende a dançar." TO FRASE-SIMBOLICA
        MOVE "IF ANGER > 0 THEN TRANSFORM(EMOCAO)" TO COMANDO-TERMINAL
    WHEN "VERDE"
        MOVE "A natureza fala, e eu escuto." TO FRASE-SIMBOLICA
        MOVE "cd ~/caminho/para/o/equilíbrio" TO COMANDO-TERMINAL
    WHEN "LILÁS"
        MOVE "As dores também constroem beleza." TO FRASE-SIMBOLICA
        MOVE "IF TRAUMA THEN PATCH(memoria)" TO COMANDO-TERMINAL
    WHEN "AZUL-ESCURO"
        MOVE "O silêncio foi o primeiro código que aprendi." TO FRASE-SIMBOLICA
        MOVE "cat ~/infancia/segredos.log" TO COMANDO-TERMINAL
    WHEN "VERDE-ÁGUA"
        MOVE "A esperança corre em fios invisíveis." TO FRASE-SIMBOLICA
        MOVE "ping -t alma_interior" TO COMANDO-TERMINAL
    WHEN OTHER
        MOVE "Cor não reconhecida. Memória bloqueada." TO FRASE-SIMBOLICA
        MOVE "EXIT PROGRAM" TO COMANDO-TERMINAL
END-EVALUATE.

DISPLAY "🔓 MEMÓRIA DESBLOQUEADA:".
DISPLAY FRASE-SIMBOLICA.
DISPLAY "💻 COMANDO SIMBÓLICO:".
DISPLAY COMANDO-TERMINAL.

STOP RUN.
