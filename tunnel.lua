robot = require("robot")

function step()
  while robot.detect() do
    robot.swing()
  end
  robot.forward()
  robot.swingDown()
  while robot.detectUp() do
    robot.swingUp()
  end
end

distance = ...
distance = distance + distance % 2

robot.forward()
robot.turnRight()
robot.forward()
robot.turnLeft()
robot.up()

for i = 1, distance, 2 do
  step()
  robot.turnLeft()
  step()
  step()
  robot.turnRight()

  step()
  robot.turnRight()
  step()
  step()
  robot.turnLeft()
end

robot.turnLeft()
robot.forward()
robot.turnLeft()
for i = 1, distance + 1 do
  robot.forward()
end
robot.down()
robot.turnAround()
