package.path = "./?.lua;" .. package.path

local Player = require("player")
local Zombie = require("zombie")
local Battle = require("battle")

print(Battle) 


print("=== TERMINAL ZOMBIE SYSTEM ===")
print("Sobreviva se puder...\n")

io.write("Digite seu nome: ")
local name = io.read()

local player = Player.new(name)

print("\nJogador criado!")
print("Nome: " .. player.name)
print("HP: " .. player.hp)
print("Dano: " .. player.damage)

math.randomseed(os.time())

local zombie = Zombie.new()
Battle.fight(player, zombie)
