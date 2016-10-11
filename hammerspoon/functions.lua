hs.window.animationDuration = 0
pixelDifference = 50
menuBarInPixles = 23
numberOfCells = 8

function getWindow()
  local window = hs.window.focusedWindow()

  if window == nil then
    return
  else
    return window
  end
end

function moveWindowX(direction)
  local window = getWindow()
  local frame = window:frame()

  frame.x = frame.x + direction
  window:setFrame(frame)
end

function moveWindowY(direction)
  local window = getWindow()
  local frame = window:frame()

  frame.y = frame.y + direction
  window:setFrame(frame)
end

function resizeWindowX(direction)
  local window = getWindow()
  local frame = window:frame()

  frame.w = frame.w + direction
  window:setFrame(frame)
end

function resizeWindowY(direction)
  local window = getWindow()
  local frame = window:frame()

  frame.h = frame.h + direction
  window:setFrame(frame)
end

function centralizeWindow()
  local window = getWindow()
  local frame = window:frame()
  local max = window:screen():frame()
  local cellX = max.w / numberOfCells
  local cellY = (menuBarInPixles + max.h) / numberOfCells

  frame.w = cellX * (numberOfCells - 2)
  frame.h = cellY * (numberOfCells - 2)
  frame.x = cellX
  frame.y = cellY

  window:setFrame(frame)
end

function fullScreenWindow()
  local window = getWindow()
  window:maximize(0)
end

function moveLeft()
  moveWindowX(pixelDifference)
end

function moveRight()
  moveWindowX(-pixelDifference)
end

function moveUp()
  moveWindowY(-pixelDifference)
end

function moveDown()
  moveWindowY(pixelDifference)
end

function resizeLeft()
  resizeWindowX(-pixelDifference)
end

function resizeRight()
  resizeWindowX(pixelDifference)
end

function resizeUp()
  resizeWindowY(-pixelDifference)
end

function resizeDown()
  resizeWindowY(pixelDifference)
end

function reloadConfig()
  hs.reload()
  hs.alert.show("Config reloaded")
end

function moveWindowToWestDisplay()
  hs.window.focusedWindow():moveOneScreenWest()
end

function moveWindowToEastDisplay()
  hs.window.focusedWindow():moveOneScreenEast()
end

function moveWindowToNorthDisplay()
  hs.window.focusedWindow():moveOneScreenNorth()
end

function moveWindowToSouthDisplay()
  hs.window.focusedWindow():moveOneScreenSouth()
end
