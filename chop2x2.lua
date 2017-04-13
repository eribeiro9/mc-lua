local robot = require("robot")

-- Initalize robot position
function readyPosition()
  robot.swing()
  robot.forward()
  robot.swing()
end

-- Chop next two blocks
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

-- Switch half of tree
function switchSides()
  robot.turnLeft()
  robot.swing()
  robot.forward()
  robot.turnRight()
  robot.swing()
end

-- Chops a 2x2 tree
function chopTree()
  local height = 1

  while robot.detectUp() do
    nextStep(true)
    height = height + 1
  end

  switchSides()

  for 1, height do
    nextStep(false)
  end
end

-- Return to initial position
function returnPosition()
  robot.back()
  robot.turnRight()
  robot.forward()
  robot.turnLeft()
end



-- Main application
-- TODO: Check if has enough fuel
readyPosition()
chopTree()
returnPosition()
