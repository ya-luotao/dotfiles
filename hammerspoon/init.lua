local application = require "hs.application"
local grid = require "hs.grid"
local window = require "hs.window"
local hotkey = require "hs.hotkey"

local vim_mode_prefix = {"ctrl"}

local hyper = {"alt"}
local hyperShifted = {"cmd", "alt"}

local source_config = os.getenv("HOME") .. "/Workspace/dotfiles/hammerspoon/"
local source_config_absolute = hs.fs.pathToAbsolute(source_config)

grid.MARGINX = 0
grid.MARGINY = 0
grid.GRIDHEIGHT = 13
grid.GRIDWIDTH = 13

window.animationDuration = 0


-- Vim Mode
vim_mode = hotkey.modal.new(vim_mode_prefix, "/")

function vim_mode:entered()
  hs.alert("Entered vim mode.")
end

function vim_mode:exited()
  hs.alert("Exited vim mode.")
end

vim_mode:bind({}, "Q", function() vim_mode:exit() end)

nested_mode = hotkey.modal.new({"ctrl"}, "W")

function nested_mode:entered()
  hs.alert("Entered nested model.")
end

function nested_mode:exited()
  hs.alert("Exited nested model.")
end

nested_mode:bind({}, "escape", function() nested_mode:exit() end)
-- Vim Mode.


hotkey.bind(hyperShifted, "o", function() application.launchOrFocus("OmniFocus") end)
hotkey.bind(hyperShifted, "f", function() application.launchOrFocus("Finder") end)
hotkey.bind(hyperShifted, "t", function() application.launchOrFocus("iTerm2") end)
hotkey.bind(hyperShifted, "c", function() application.launchOrFocus("Google Chrome") end)

-- hotkey.bind(hyper, "J", function() grid.adjustHeight(1) end)
-- hotkey.bind(hyper, "K", function() grid.adjustHeight(-1) end)
-- hotkey.bind(hyper, "H", function() grid.adjustWidth(1) end)
-- hotkey.bind(hyper, "L", function() grid.adjustWidth(-1) end)

hotkey.bind(hyper, "=", function() grid.adjustHeight(1) end)
hotkey.bind(hyper, "-", function() grid.adjustHeight(-1) end)
hotkey.bind(hyperShifted, "=", function() grid.adjustWidth(1) end)
hotkey.bind(hyperShifted, "-", function() grid.adjustWidth(-1) end)

hotkey.bind(hyper, "Y", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  f.y = f.y - 10
  win:setFrame(f)
end)

hotkey.bind(hyper, "K", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y - 10
  win:setFrame(f)
end)

hotkey.bind(hyper, "U", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + 10
  f.y = f.y - 10
  win:setFrame(f)
end)

hotkey.bind(hyper, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  win:setFrame(f)
end)

hotkey.bind(hyper, "L", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + 10
  win:setFrame(f)
end)

hotkey.bind(hyper, "B", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  f.y = f.y + 10
  win:setFrame(f)
end)

hotkey.bind(hyper, "J", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y + 10
  win:setFrame(f)
end)

hotkey.bind(hyper, "N", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + 10
  f.y = f.y + 10
  win:setFrame(f)
end)

hotkey.bind(hyperShifted, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = 0
  f.y = 0
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hotkey.bind(hyperShifted, "J", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = 0
  f.y = max.h / 2
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

hotkey.bind(hyperShifted, "K", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = 0
  f.y = 0
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

hotkey.bind(hyperShifted, "L", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.w / 2
  f.y = 0
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.pathwatcher.new(source_config, hs.reload):start()
hs.alert.show("Config loaded.")
