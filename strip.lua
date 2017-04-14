robot = require("robot")

depth = ...

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

function doDepth(func, mult, extra)
  for i = 1, mult * depth + extra do
    func()
  end
end

function digLines()
  robot.forward()
  doDepth(step, 1, 0)
  robot.turnAround()
  doDepth(robot.forward, 1, 2)
  doDepth(step, 1, 0)
  robot.turnAround()
  doDepth(robot.forward, 1, 1)
end

stream = io.open("strip.txt", "r")
data = stream:read("*l")
stream:close()

robot.down()

if data > 0 then
  robot.forward()
  robot.turnRight()
  doDepth(robot.forward, 3, 1)

  step()
  step()
  step()
  robot.turnRight()
  step()
  step()
  robot.turnRight()
  step()
  step()
  robot.turnRight()
  step()
  robot.turnRight()
  step()
  robot.turnLeft()
end

digLines()

if data > 0 then
  robot.forward()
  robot.turnLeft()
  doDepth(robot.forward, 6, -2)

  step()
  step()
  step()
  robot.turnLeft()
  step()
  step()
  robot.turnLeft()
  step()
  step()
  robot.turnLeft()
  step()
  robot.turnLeft()
  step()
  robot.turnRight()

  digLines()

  robot.turnRight()
  doDepth(robot.forward, 3, 0)
  robot.turnLeft()
end

robot.up()

data = data + 1
stream = io.open("strip.txt", "w")
stream:write(data)
stream:close()
