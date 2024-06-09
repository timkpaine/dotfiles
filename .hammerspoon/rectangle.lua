-- Common Key Chords
local chords = require "chords"

-- Lunette
hs.loadSpoon("Lunette")
customBindings = {
  leftHalf = {
    {chords.alt_cmd_ctrl, "left"},
  },
  rightHalf = {
    {chords.alt_cmd_ctrl, "right"},
  },
  topHalf = {
    {chords.alt_cmd_ctrl, "up"},
  },
  bottomHalf = {
    {chords.alt_cmd_ctrl, "down"},
  },
  topLeft = {
    {chords.alt_ctrl_shift, "left"},
  },
  topRight = {
    {chords.alt_ctrl_shift, "up"},
  },
  bottomLeft = {
    {chords.alt_ctrl_shift, "down"},
  },
  bottomRight = {
    {chords.alt_ctrl_shift, "right"},
  },
  fullScreen = {
    {chords.alt_cmd_ctrl, "return"},
  },
  center = false,
  nextThird = false,
  prevThird = false,
  enlarge = false,
  shrink = false,
  undo = false,
  redo = false,
  nextDisplay = {
    {chords.alt_ctrl, "Right"},
  },
  prevDisplay = {
    {chords.alt_ctrl, "Left"},
  }
}
spoon.Lunette:bindHotkeys(customBindings)
