function love.load()
    Classe = require "classic"
    require "jogo"
    require "nave"
    jogo = Jogo()
end
function love.update(dt)
    jogo:update(dt)
end
function love.draw()
    jogo:draw()
end
