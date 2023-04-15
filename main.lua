function love.load()
    x = 200
    y = 400
    largura = 100
    altura = 70
end

function love.update(dt)
    if love.keyboard.isDown("d") then
        x = x + 100 * dt
    end
    if love.keyboard.isDown("a") then
        x = x - 100 * dt
    end
    if love.keyboard.isDown("w") then
        y = y - 100 * dt
    end
    if love.keyboard.isDown("s") then
        y = y + 100 * dt
    end
end
function love.draw()
    love.graphics.rectangle("fill", x, y, largura, altura)
end