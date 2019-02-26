local application = require "hs.application"
local pathwatcher = require "hs.pathwatcher"
local grid = require "hs.grid"
local window = require "hs.window"
local hotkey = require "hs.hotkey"
local alert = require "hs.alert"

local vim_mode_prefix = {"ctrl"}

local alt = {"alt"}
local cmdalt = {"cmd", "alt"}

local source_config = os.getenv("HOME") .. "/Workspace/dotfiles/hammerspoon/"

window.animationDuration = 0


-- Vim Mode
vim_mode = hotkey.modal.new(vim_mode_prefix, "/")

function vim_mode:entered()
  alert("Entered vim mode.")
end

function vim_mode:exited()
  alert("Exited vim mode.")
end

vim_mode:bind({}, "Q", function() vim_mode:exit() end)
-- Vim Mode.


hotkey.bind(cmdalt, "o", function() application.launchOrFocus("OmniFocus") end)
hotkey.bind(cmdalt, "f", function() application.launchOrFocus("Finder") end)
hotkey.bind(cmdalt, "t", function() application.launchOrFocus("iTerm2") end)
hotkey.bind(cmdalt, "c", function() application.launchOrFocus("Google Chrome") end)

-- hotkey.bind(alt, "J", function() grid.adjustHeight(1) end)
-- hotkey.bind(alt, "K", function() grid.adjustHeight(-1) end)
-- hotkey.bind(alt, "H", function() grid.adjustWidth(1) end)
-- hotkey.bind(alt, "L", function() grid.adjustWidth(-1) end)

hotkey.bind(alt, "=", function() grid.adjustHeight(1) end)
hotkey.bind(alt, "-", function() grid.adjustHeight(-1) end)
hotkey.bind(cmdalt, "=", function() grid.adjustWidth(1) end)
hotkey.bind(cmdalt, "-", function() grid.adjustWidth(-1) end)

hotkey.bind(alt, "Y", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  f.y = f.y - 10
  win:setFrame(f)
end)

hotkey.bind(alt, "K", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y - 10
  win:setFrame(f)
end)

hotkey.bind(alt, "U", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + 10
  f.y = f.y - 10
  win:setFrame(f)
end)

hotkey.bind(alt, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  win:setFrame(f)
end)

hotkey.bind(alt, "L", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + 10
  win:setFrame(f)
end)

hotkey.bind(alt, "B", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  f.y = f.y + 10
  win:setFrame(f)
end)

hotkey.bind(alt, "J", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y + 10
  win:setFrame(f)
end)

hotkey.bind(alt, "N", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + 10
  f.y = f.y + 10
  win:setFrame(f)
end)

hotkey.bind(cmdalt, "H", function()
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

hotkey.bind(cmdalt, "J", function()
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

hotkey.bind(cmdalt, "K", function()
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

hotkey.bind(cmdalt, "L", function()
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

pathwatcher.new(source_config, hs.reload):start()
alert.show("Config loaded.")
