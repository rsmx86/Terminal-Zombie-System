local Player = {}

function Player.new(name)
    local self = {
        name = name,
        hp = 100,
        damage = 15,
        hunger = 0,
        inventory = {}
    }
    return self
end

return Player
