robot = require("robot")

distance = ...
distance = distance + distance % 2 -- round up to even number

function nextStep()
  robot.swing()
  robot.forward()
  while robot.detectUp() do
    robot.swingUp()
  end
  robot.swingDown()
end

function mineTunnel()
  for 1, distance, 2 do
    nextStep()
    robot.turnLeft()
    nextStep()
    nextStep()
    robot.turnRight()

    nextStep()
    robot.turnRight()
    nextStep()
    nextStep()
    robot.turnLeft()
  end
end

robot.forward()
robot.turnRight()
robot.forward()
robot.turnLeft()
robot.up()

mineTunnel()

robot.down()
robot.turnLeft()
robot.forward()
robot.turnLeft()
for 1, distance do
  robot.forward()
end
robot.forward()
