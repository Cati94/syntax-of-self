import random

memorias = [
    ("Vermelho", "Mesmo o fogo aprende a dançar.", "print('if rage: transform(rage) into movement')"),
    ("Amarelo", "A luz também mora nos dias simples.", 'DISPLAY "LUZ_ATIVA" UPON CONSOLE.'),
    ("Verde", "A natureza fala, e eu escuto.", 'echo "🌿 caminho: ./descobrir/eu"'),
    ("Azul", "Dominar o desconhecido é poder pessoal.", 'python3 -m aprendizado.solitário --start'),
    ("Roxo", "As dores também constroem.", 'IF DOR THEN CONTINUA.'),
    ("Laranja", "Criar é resistir com cor.", 'print("Obra: " + criar(pedacos))'),
    ("Multicor", "A criança que fui ainda sonha.", 'SELECT * FROM LEMBRANCAS WHERE idade < 10.')
]

cor, frase, codigo = random.choice(memorias)
print(f"🔓 Memória desbloqueada ({cor})\n\"{frase}\"\n💻 Código simbólico: {codigo}")
