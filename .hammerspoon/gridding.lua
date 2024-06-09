-- Common Key Chords
local chords = require "chords"

-- Gridding
hs.grid.GRIDHEIGHT = 4
hs.grid.GRIDWIDTH = 8
hs.grid.MARGINX = 0
hs.grid.MARGINY = 0
hs.hotkey.bind(chords.alt_cmd_ctrl, '=', function() hs.grid.adjustwidth( 1) end)
hs.hotkey.bind(chords.alt_cmd_ctrl, '-', function() hs.grid.adjustwidth(-1) end)
hs.hotkey.bind(chords.alt_cmd_ctrl, 'J', hs.grid.pushWindowDown)
hs.hotkey.bind(chords.alt_cmd_ctrl, 'K', hs.grid.pushWindowUp)
hs.hotkey.bind(chords.alt_cmd_ctrl, 'H', hs.grid.pushWindowLeft)
hs.hotkey.bind(chords.alt_cmd_ctrl, 'L', hs.grid.pushWindowRight)
hs.hotkey.bind(chords.alt_cmd_ctrl, 'U', hs.grid.resizeWindowTaller)
hs.hotkey.bind(chords.alt_cmd_ctrl, 'Y', hs.grid.resizeWindowShorter)
hs.hotkey.bind(chords.alt_cmd_ctrl, 'O', hs.grid.resizeWindowWider)
hs.hotkey.bind(chords.alt_cmd_ctrl, 'I', hs.grid.resizeWindowThinner)
-- hotkey.bind(chords.alt_cmd_ctrl, 'M', hs.grid.maximizeWindow)
-- hotkey.bind(chords.alt_cmd_ctrl, 'N', hs.grid.pushWindow_nextscreen)
-- hotkey.bind(chords.alt_cmd_ctrl, 'P', hs.grid.pushWindow_prevscreen)
