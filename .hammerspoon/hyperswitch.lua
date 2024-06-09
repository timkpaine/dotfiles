-- Window Switcher
switcher = hs.window.switcher.new() -- default windowfilter: only visible windows, all Spaces
hs.hotkey.bind('alt', 'tab', hs.window.switcher.nextWindow)
hs.hotkey.bind('alt-shift', 'tab', hs.window.switcher.previousWindow)
