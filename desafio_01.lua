
-- projeto do modulo 1
--[[
====================
/
/ Goblin
/ Monstro basico de RPG
/
/ ataque
defesa
hp
velocidade
int
====================
]]




local function Barra_progresso(atributo)
	
	local saida = ""
	local cheio = "❚"
	local vazio = "⎕"

	for i=1,10,1 do
		if i <= atributo then
			saida = saida .. cheio
		else
			saida = saida .. vazio
		end
		
	end

	return saida
end

-- habilitar utf-8	
--os.execute("chcp 65001")
os.execute("clear")


-- Mob
local mob_name = "Goblin"
local mob_description = "Monstro basico de RPG"
local mob_emoji = "👍🏻"

-- Atributos
local mob_ataque = 1
local mob_defesa = 2
local mob_hp = 3
local mob_velocidade = 4
local mob_int = 5
local mob_xp = 6

local mob_som = "kkkkkk"
local mob_periodo = "dia"
local mob_loot = "hammer"
local mob_hostil = true



-- Cartao
print("=========================================================")
print("|")
print("| Nome:           " .. mob_name)
print("| Descricao:      " .. mob_description)
print("| Emoji favorito: " .. mob_emoji)
print("|")
print("| Ataque:         " .. Barra_progresso(mob_ataque))
print("| Defesa:         " .. Barra_progresso(mob_defesa))
print("| HP:             " .. Barra_progresso(mob_hp))
print("| Velocidade:     " .. Barra_progresso(mob_velocidade))
print("| XP:             " .. Barra_progresso(mob_xp))
print("|")
print("=========================================================")
