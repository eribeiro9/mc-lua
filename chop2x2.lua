robot = require("robot")

function nextStep(isUp)
  if isUp then
    robot.swingUp()
    robot.up()
  else
    robot.swingDown()
    robot.down()
  end
  robot.swing()
end

function chopTree()
  local height = 1

  while robot.detectUp() do
    nextStep(true)
    height = height + 1
  end

  robot.turnLeft()
  robot.swing()
  robot.forward()
  robot.turnRight()
  robot.swing()

  for 1, height do
    nextStep(false)
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
