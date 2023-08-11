-- RG do Creeper
--[[
    =============== Creeper ===============
   | Um monstro verde perigoso que pode explode.
   | 
    ============ Comportamento ============
   | Hostil ao jogador e ao ser atacado por outros mobs
   |
    ============== Atributos ==============
   | Vida: 20(10 corações)
   |
   |
   |
   |
]]

--Biblioteca para cores

-- Status gerais
local monster_type = "Creeper"
local emoji_explosion = "💥"
local monster_max_life = 15
local monster_defense = 6
local monster_speed = 3
local monster_normal_attack_power = 8

-- Informações gerais
local monster_description = "Um monstro verde e perigoso que explode ao chegar perto"
local monster_player_alingment = "Hostil por padrão ao player"
local monster_overall = "Neutro (Mas ataca mobs quando atacado)"
local variation = "Creeper carregado = Ocorre quando um raio cai\n| em sua cabeça aumentando seu poder de explosão"

-- Drops
local monster_drops = " 5 de experiência \n| 0-2 pólvora \n| 1 disco de música aleatório (caso morto por um esqueleto ou um \n| esqueleto-errante 1 cabeça de creeper caso morto por um creeper\n| carregado)"

---Função para barra de progresso
local function progress(number)
    local barra_completa = ""
    for attribute = 1, 15, 1 do
        if number >= attribute then
            --- Barra cheia
            barra_completa = barra_completa .. "█"
        else
            ---Barra vazia
            barra_completa = barra_completa .. "▁"
        end
    end
    return barra_completa
 end

-- "Pokedéx do creeper"
print("| ====================== " .. monster_type .. " =========================")
print("| \n| " .. monster_description )
print("| \n| ====================== Atributos =======================")
print("| \n| Vida máxima:       " .. progress(monster_max_life))
print("| Defesa:            " .. progress(monster_defense))
print("| Velocidade:        ".. progress(monster_speed))
print("| Poder de explosão: ".. progress(monster_normal_attack_power))
print("| \n| ========================= Som ==========================")
print("| \n| Fssssssssst " .. emoji_explosion)
print("| \n| ===================== Alinhamento ======================")
print("| \n| " .. monster_player_alingment)
print("| " .. monster_overall)
print("| \n| ======================= Variação =======================")
print("| \n| " .. variation)
print("| \n| ======================== Drops =========================")
print("|\n|" .. monster_drops)
print("|\n| ======================== Fim ============================")