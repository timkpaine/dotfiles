-- Load Extensions
require "gridding"
require "rectangle"
require "hyperswitch"
require "cpu"
require "spotify"

-- TODO
-- https://github.com/asmagill/hammerspoon/wiki/hs.canvas.examples
-- https://github.com/catskull/CPUTempMenuDisplay.spoon/blob/main/init.lua

-- Init and Reload
function init()
  hs.alert.show("Hammerspoon ready.")
end

function reload(files)
  hs.reload()
  init()
end

hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", hs.reload):start()
init()
