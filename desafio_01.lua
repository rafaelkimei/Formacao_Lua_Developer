
----------------------------------------------------------------------------------------------------

--- funcao que imprime a borda superior
local function Borda_Superior()
	print("┌───────────────────────────────────────────────────────────────────────┐")
end


--- funcao que imprime a borda inferior
local function Borda_Inferior()
	print("└───────────────────────────────────────────────────────────────────────┘")
end

----------------------------------------------------------------------------------------------------

--- Funcao que imprime x espacos em branco sem pular linha
local function Completa_Espaco(x)

	for i=1,x,1 do
		io.write(" ")
	end
end

----------------------------------------------------------------------------------------------------

--- Funcao que gera uma string equivalente a uma barra de progresso
local function Barra_progresso(atributo)
	
	local saida = ""
	local cheio = "⬛️"
	local vazio = "⬜️"

	for _=1,10,1 do
		if _ <= atributo then
			saida = saida .. cheio
		else
			saida = saida .. vazio
		end		
	end

	return saida
end


----------------------------------------------------------------------------------------------------

--- Funcao que imprime cada linha, usada para imprimir a borda direita na posicao correta.
--- ela calcula o tamanho da linha e completa com a qtd certa de espacos em branco antes de 
--- imprimir a borda direita.
local function Imprime_Linha(texto)

	local LARGURA <const> = 70

	linha = texto
	espacos = LARGURA - utf8.len(linha)

	io.write( "│ " .. linha)
	Completa_Espaco(espacos)
	print("│")

end

----------------------------------------------------------------------------------------------------

-- habilitar utf-8	
os.execute("chcp 65001")
os.execute("clear")



-- Mob
local mob_id = 0001
local mob_name = "Goblin"
local mob_description = "Monstro básico de RPG"
local mob_emoji = "👍🏻"

-- Atributos
local mob_ataque = 1
local mob_defesa = 2
local mob_hp = 3
local mob_velocidade = 4
local mob_int = 5
local mob_xp = 6

-- Outras info
local mob_som = "kkkkkk"
local mob_periodo = "Dia"
local mob_loot = "Uma adaga de cobre"
local mob_hostil = true

-- Cartao
Borda_Superior()
Imprime_Linha(" ")
Imprime_Linha("ID:             " .. string.format("%0004d",mob_id))
Imprime_Linha("Nome:           " .. mob_name)
Imprime_Linha("Descrição:      " .. mob_description)
Imprime_Linha("Emoji favorito: " .. mob_emoji)
Imprime_Linha(" ")
Imprime_Linha("Ataque:         " .. Barra_progresso(mob_ataque))
Imprime_Linha("Defesa:         " .. Barra_progresso(mob_defesa))
Imprime_Linha("HP:             " .. Barra_progresso(mob_hp))
Imprime_Linha("Velocidade:     " .. Barra_progresso(mob_velocidade))
Imprime_Linha("Inteligência:   " .. Barra_progresso(mob_int))
Imprime_Linha("XP:             " .. Barra_progresso(mob_xp))
Imprime_Linha(" ")
Imprime_Linha("Som:            " .. mob_som)
Imprime_Linha("Periodo:        " .. mob_periodo)
Imprime_Linha("Loot:           " .. mob_loot)

if mob_hostil == true then
	Imprime_Linha("Hostil:         Sim")
else
	Imprime_Linha("Hostil:         Não")
end

Imprime_Linha(" ")
Borda_Inferior()
print("\n")
