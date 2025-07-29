# Memória bloqueada
memoria = {
    "posição_1": None,
    "posição_2": None,
    "posição_3": None
}

# Peças disponíveis
borboletas = ["azul", "rosa", "laranja"]

# Combinação correta (simbólica)
chave = {
    "posição_1": "rosa",
    "posição_2": "laranja",
    "posição_3": "azul"
}

# Jogo simbólico
for posição in memoria:
    escolha = input(f"Coloca uma borboleta em {posição} (azul/rosa/laranja): ").strip().lower()
    memoria[posição] = escolha

# Validação
if memoria == chave:
    print("\n🦋 Memória desbloqueada!")
    print("‘Borboletas coladas na parede, como sonhos pousados em silêncio.’")
else:
    print("\n❌ A sequência não encaixa. A memória permanece oculta.")
