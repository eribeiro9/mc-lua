robot = require("robot")

function chopTree()
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
end

robot.swing()
robot.forward()
robot.swing()

chopTree()

robot.back()
robot.turnRight()
robot.forward()
robot.turnLeft()
