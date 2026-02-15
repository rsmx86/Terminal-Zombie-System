local Battle = {}

function Battle.fight(player, zombie)
    print("\n\27[33mUm zumbi apareceu!\27[0m")
    print("HP do Zumbi: " .. zombie.hp)

    -- loop de batalha
    while player.hp > 0 and zombie.hp > 0 do
        print("\nEscolha uma Acao:")
        print("1 - Atacar")
        print("2 - Fugir")

        local choice = io.read()

        if choice == "1" then
            zombie.hp = zombie.hp - player.damage
            print("\27[32mVoce atacou! HP do Zumbi: " .. math.max(zombie.hp, 0) .. "\27[0m")

            if zombie.hp > 0 then
                player.hp = player.hp - zombie.damage
                print("\27[31mO zumbi atacou! Seu HP: " .. math.max(player.hp, 0) .. "\27[0m")
            end

        elseif choice == "2" then
            print("\27[36mVoce fugiu!\27[0m")
            return "escaped"
        else
            print("\27[35mOpcao invalida.\27[0m")
        end
    end

    if player.hp <= 0 then
        return "dead"
    else
        print("\27[32mZumbi derrotado!\27[0m")
        return "zombie_defeated"
    end
end

return Battle
