local chords = require "chords"

hs.hotkey.bind(chords.alt_cmd_ctrl, "p", hs.spotify.playpause)
hs.hotkey.bind(chords.cmd_ctrl, "p", hs.spotify.previous)
hs.hotkey.bind(chords.cmd_ctrl, "n", hs.spotify.next)

local function sendSystemKey(key)
  hs.eventtap.event.newSystemKeyEvent(key, true):post()
  hs.eventtap.event.newSystemKeyEvent(key, false):post()
end

hs.hotkey.bind(chords.cmd_ctrl, "m", function() sendSystemKey("MUTE") end)
hs.hotkey.bind(chords.cmd_ctrl, "-", function() sendSystemKey("SOUND_DOWN") end)
hs.hotkey.bind(chords.cmd_ctrl, "=", function() sendSystemKey("SOUND_UP") end)

