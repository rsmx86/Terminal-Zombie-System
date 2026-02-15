print("Carregando battle.lua")

local Battle = {}

function Battle.fight(player, zombie)
    print("\nUm zumbi apareceu!")
    print("HP do Zumbi: " .. zombie.hp)

    while player.hp > 0 and zombie.hp > 0 do
        print("\nEscolha uma Acao:")
        print("1 - Atacar")
        print("2 - Fugir")

        local choice = io.read()

        if choice == "1" then
            zombie.hp = zombie.hp - player.damage
            print("Voce atacou! HP do Zumbi: " .. zombie.hp)

            if zombie.hp > 0 then
                player.hp = player.hp - zombie.damage
                print("O zumbe atacou! Seu HP: " .. player.hp)
            end

        elseif choice == "2" then
            print("Voce fugiu!")
            return
        else
            print("Opcao invalida.")
        end
    end

    if player.hp <= 0 then
        print("\nVoce morreu...")
    else
        print("\nZumbi derrotado!")
    end
end

return Battle
