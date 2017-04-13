r = require("robot")

r.swing()
r.forward()
r.swing()

h = 1

while r.detectUp() do
  r.swingUp()
  r.up()
  r.swing()
  h = h + 1
end

r.turnLeft()
r.swing()
r.forward()
r.turnRight()
r.swing()

for 1, h do
  r.swingDown()
  r.down()
  r.swing()
end

r.back()
r.turnRight()
r.forward()
r.turnLeft()
