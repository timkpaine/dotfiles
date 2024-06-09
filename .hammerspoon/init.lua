-- Load Extensions
local hotkey = require "hs.hotkey"
local window = require "hs.window"
local alert = require "hs.alert"
local grid = require "hs.grid"

-- Common Key Chords
local alt_ctrl = {"alt", "ctrl"}
local alt_ctrl_shift = {"alt", "ctrl", "shift"}
local alt_cmd_ctrl = {"cmd", "alt", "ctrl"}

-- Gridding
grid.GRIDHEIGHT = 4
grid.GRIDWIDTH = 8
grid.MARGINX = 0
grid.MARGINY = 0
hotkey.bind(alt_cmd_ctrl, '=', function() grid.adjustwidth( 1) end)
hotkey.bind(alt_cmd_ctrl, '-', function() grid.adjustwidth(-1) end)
hotkey.bind(alt_cmd_ctrl, 'J', grid.pushWindowDown)
hotkey.bind(alt_cmd_ctrl, 'K', grid.pushWindowUp)
hotkey.bind(alt_cmd_ctrl, 'H', grid.pushWindowLeft)
hotkey.bind(alt_cmd_ctrl, 'L', grid.pushWindowRight)
hotkey.bind(alt_cmd_ctrl, 'U', grid.resizeWindowTaller)
hotkey.bind(alt_cmd_ctrl, 'Y', grid.resizeWindowShorter)
hotkey.bind(alt_cmd_ctrl, 'O', grid.resizeWindowWider)
hotkey.bind(alt_cmd_ctrl, 'I', grid.resizeWindowThinner)
-- hotkey.bind(alt_cmd_ctrl, 'M', grid.maximizeWindow)
-- hotkey.bind(alt_cmd_ctrl, 'N', grid.pushWindow_nextscreen)
-- hotkey.bind(alt_cmd_ctrl, 'P', grid.pushWindow_prevscreen)

-- Lunette
hs.loadSpoon("Lunette")
customBindings = {
  leftHalf = {
    {alt_cmd_ctrl, "left"},
  },
  rightHalf = {
    {alt_cmd_ctrl, "right"},
  },
  topHalf = {
    {alt_cmd_ctrl, "up"},
  },
  bottomHalf = {
    {alt_cmd_ctrl, "down"},
  },
  topLeft = {
    {alt_ctrl_shift, "Left"},
  },
  topRight = {
    {alt_ctrl_shift, "Right"},
  },
  bottomLeft = {
    {alt_ctrl_shift, "Left"},
  },
  bottomRight = {
    {alt_ctrl_shift, "Right"},
  },
  fullScreen = {
    {alt_cmd_ctrl, "return"},
  },
  center = false,
  nextThird = false,
  prevThird = false,
  enlarge = false,
  shrink = false,
  undo = false,
  redo = false,
  nextDisplay = {
    {alt_ctrl, "Right"},
  },
  prevDisplay = {
    {alt_ctrl, "Left"},
  }
}
spoon.Lunette:bindHotkeys(customBindings)

-- Window Switcher
switcher = hs.window.switcher.new() -- default windowfilter: only visible windows, all Spaces
hs.hotkey.bind('alt', 'tab', hs.window.switcher.nextWindow)
hs.hotkey.bind('alt-shift', 'tab', hs.window.switcher.previousWindow)


-- Init and Reload
function init()
  alert.show("Hammerspoon ready.")
end
function reload(files)
  hs.reload()
  init()
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", hs.reload):start()
init()
