local chords = require "chords"

hs.hotkey.bind({"ctrl"}, "p", hs.spotify.playpause)
hs.hotkey.bind(chords.cmd_ctrl, "p", hs.spotify.previous)
hs.hotkey.bind(chords.cmd_ctrl, "n", hs.spotify.next)
