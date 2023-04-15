Nave= Classe:extend()

function Nave:new()
    self.image = love.graphics.newImage("images/trevor.jpg")
    self.x , self.y = 400 , 300
    self.largura , self.altura = 50 , 50
    self.velocidade = 200
end
function Nave:update(dt)
    self:mover(dt)
    self:manterTela()
end
function Nave:draw()
    --love.graphics.rectangle("fill", self.x, self.y, self.largura, self.altura)
    love.graphics.draw(self.image ,self.x, self.y)
end

function Nave:mover(dt)
    if love.keyboard.isDown("w") then
        self.y = self.y - self.velocidade * dt
    end
    if love.keyboard.isDown("s") then
        self.y = self.y + self.velocidade * dt
    end
    if love.keyboard.isDown("a") then
        self.x = self.x - self.velocidade * dt
    end
    if love.keyboard.isDown("d") then
        self.x = self.x + self.velocidade * dt
    end
end

function Nave:manterTela()
    if self.x < 0 then
        self.x = 0
    end
    if self.x > 800 - self.largura then
        self.x = 800 - self.largura
    end
    if self.y < 0 then
        self.y = 0
    end
    if self.y > 600 - self.altura then
        self.y = 600 - self.altura
    end
end