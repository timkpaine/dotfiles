-- Load Extensions
local hotkey = require "hs.hotkey"
local window = require "hs.window"
local alert = require "hs.alert"
local grid = require "hs.grid"
local geometry = require "hs.geometry"

-- Actual config =================================
local mash = {"cmd", "alt", "ctrl"}

-- Set grid size.
grid.GRIDHEIGHT = 4
grid.GRIDWIDTH = 8
grid.MARGINX = 0
grid.MARGINY = 0

-- Set hotkeys
hotkey.bind(mash, ';', function() grid.snap(window.focusedwindow()) end)
hotkey.bind(mash, "'", function() fnutils.map(window.visiblewindows(), grid.snap) end)

hotkey.bind(mash, '=', function() grid.adjustwidth( 1) end)
hotkey.bind(mash, '-', function() grid.adjustwidth(-1) end)

hotkey.bind(mash, 'M', grid.maximizeWindow)

-- hotkey.bind(mash, 'N', grid.pushWindow_nextscreen)
-- hotkey.bind(mash, 'P', grid.pushWindow_prevscreen)

hotkey.bind(mash, 'J', grid.pushWindowDown)
hotkey.bind(mash, 'K', grid.pushWindowUp)
hotkey.bind(mash, 'H', grid.pushWindowLeft)
hotkey.bind(mash, 'L', grid.pushWindowRight)

hotkey.bind(mash, 'U', grid.resizeWindowTaller)
hotkey.bind(mash, 'Y', grid.resizeWindowShorter)
hotkey.bind(mash, 'O', grid.resizeWindowWider)
hotkey.bind(mash, 'I', grid.resizeWindowThinner)

-- set up your windowfilter
switcher = hs.window.switcher.new() -- default windowfilter: only visible windows, all Spaces
-- switcher_space = hs.window.switcher.new(hs.window.filter.new():setCurrentSpace(true):setDefaultFilter{}) -- include minimized/hidden windows, current Space only
-- switcher_browsers = hs.window.switcher.new{'Safari','Google Chrome'} -- specialized switcher for your dozens of browser windows :)

hs.hotkey.bind('alt','tab',hs.window.switcher.nextWindow)
hs.hotkey.bind('alt-shift','tab',hs.window.switcher.previousWindow)

function init()
  alert.show("Hammerspoon ready.")
end

init()
