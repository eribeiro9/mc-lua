robot = require("robot")

robot.swing()
robot.forward()
robot.swing()

local height = 1

while robot.detectUp() do
  robot.swingUp()
  robot.up()
  robot.swing()
  height = height + 1
end

robot.turnLeft()
robot.swing()
robot.forward()
robot.turnRight()
robot.swing()

for 1, height do
  robot.swingDown()
  robot.down()
  robot.swing()
end

robot.back()
robot.turnRight()
robot.forward()
robot.turnLeft()
