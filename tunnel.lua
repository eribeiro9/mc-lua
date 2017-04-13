robot = require("robot")

function step()
  robot.swing()
  robot.forward()
  while robot.detectUp() do
    robot.swingUp()
  end
  robot.swingDown()
end

distance = ...
distance = distance + distance % 2

robot.forward()
robot.turnRight()
robot.forward()
robot.turnLeft()
robot.up()

for 1, distance, 2 do
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

robot.down()
robot.turnLeft()
robot.forward()
robot.turnLeft()
for 1, distance + 1 do
  robot.forward()
end
robot.turnAround()
