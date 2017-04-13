r = require("robot")

function s()
  r.swing()
  r.forward()
  while r.detectUp() do
    r.swingUp()
  end
  r.swingDown()
end

d = ...
d = d + d % 2

r.forward()
r.turnRight()
r.forward()
r.turnLeft()
r.up()

for 1, d, 2 do
  s()
  r.turnLeft()
  s()
  s()
  r.turnRight()

  s()
  r.turnRight()
  s()
  s()
  r.turnLeft()
end

r.down()
r.turnLeft()
r.forward()
r.turnLeft()
for 1, d do
  r.forward()
end
r.forward()
