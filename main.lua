package.path = "./?.lua;" .. package.path

local Player = require("player")
local Zombie = require("zombie")
local Battle = require("battle")

math.randomseed(os.time())

print("\27[33m=== TERMINAL ZOMBIE SYSTEM ===\27[0m")
print("\27[33mSobreviva se... se conseguir...\n\27[0m")

io.write("Digite seu nome: ")
local name = io.read()

local player = Player.new(name)

print("\n\27[32mJogador criado!\27[0m")
print("Nome: " .. player.name)
print("HP: " .. player.hp)
print("Dano: " .. player.damage)

-- Loop principal
while player.hp > 0 do
    local zombie = Zombie.new()
    local result = Battle.fight(player, zombie)

    if result == "dead" then
        print("\n\27[31mVoce morreu... Fim de jogo!\27[0m")
        break

    elseif result == "escaped" then
        if math.random() < 0.5 then
            local heal = math.random(5, 25)
            player.hp = math.min(player.hp + heal, 150)
            print("\27[36mVoce encontrou mantimentos! HP recuperado: " .. heal .. ". Seu HP agora: " .. player.hp .. "\27[0m")
        else
            print("\27[36mVoce fugiu e nao encontrou nada.\27[0m")
        end

    elseif result == "zombie_defeated" then
        if math.random() < 0.5 then
            local heal = math.random(5, 25)
            player.hp = math.min(player.hp + heal, 150)
            print("\27[32mVoce encontrou mantimentos! HP recuperado: " .. heal .. ". Seu HP agora: " .. player.hp .. "\27[0m")
        else
            print("\27[33mUm novo zumbi pode surgir em breve...\27[0m")
        end
    end

    print("\n---------------------------\n")
end

print("\27[33mObrigado por jogar, " .. player.name .. "!\27[0m")
