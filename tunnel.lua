local robot = require("robot")

-- Accept distance and round up to nearest even number
local distance = ...
distance = distance + distance % 2

-- Initalize robot position
function readyPosition()
  robot.forward()
  robot.turnRight()
  robot.forward()
  robot.turnLeft()
  robot.up()
end

-- A single 3-tall column
function nextStep()
  robot.swing()
  robot.forward()
  while robot.detectUp() do
    robot.swingUp()
    -- TODO: wait for gravity
  end
  robot.swingDown()
end

-- A single 3x3x1 layer
function nextLayer(isEven)
  nextStep()
  if isEven then
    robot.turnRight()
  else
    robot.turnLeft()
  end
  nextStep()
  nextStep()
  if isEven then
    robot.turnLeft()
  else
    robot.turnRight()
  end
end

-- Mines 3 x 3 x distance tunnel
function mineTunnel()
  for 1, distance, 2 do
    nextLayer(false)
    nextLayer(true)
  end
end

-- Return to initial position
function returnPosition()
  robot.down()
  robot.turnLeft()
  robot.forward()
  robot.turnLeft()
  for 1, distance do
    robot.forward()
  end
  robot.forward()
end



-- Main application
-- TODO: Check if has enough fuel
readyPosition()
mineTunnel()
returnPosition()
