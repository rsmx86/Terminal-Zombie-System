print("Carregando zombie.lua")

local Zombie = {}

function Zombie.new()
    local self = {
        hp = math.random(50, 80),
        damage = math.random(5, 12)
    }

    return self
end

return Zombie
