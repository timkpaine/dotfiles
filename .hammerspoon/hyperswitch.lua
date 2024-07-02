-- Window Switcher
-- NOTE: this thing can be slow, so we use the below option
-- switcher = hs.window.switcher.new()
-- hs.hotkey.bind('alt', 'tab', hs.window.switcher.nextWindow)
-- hs.hotkey.bind('alt-shift', 'tab', hs.window.switcher.previousWindow)

-- performance improvement
hs.window.animationDuration = 0


-- From: https://github.com/dmgerman/dmg-hammerspoon/blob/f8da75d121c37df40c0971336eb3f67c73d67187/dmg.spoon/init.lua#L115-L224
local theWindows = hs.window.filter.new()
theWindows:setDefaultFilter{}
theWindows:setSortOrder(hs.window.filter.sortByFocusedLast)
local currentWindows = {}
local previousSelection = nil  -- the idea is that one switches back and forth between two windows all the time

for i,v in ipairs(theWindows:getWindows()) do
   table.insert(currentWindows, v)
end

local function find_window_by_title(t)
   for i,v in ipairs(currentWindows) do
      if string.find(v:title(), t) then
         return v
      end
   end
   return nil
end

local function focus_by_title(t)
   w = find_window_by_title(t)
   if w then
      w:focus()
   end
   return w
end

local function focus_by_app(appName)
   for i,v in ipairs(currentWindows) do
      if string.find(v:application():name(), appName) then
         v:focus()
         return v
      end
   end
   return nil
end



local function callback_window_created(w, appName, event)

   if event == "windowDestroyed" then
      for i,v in ipairs(currentWindows) do
         if v == w then
            table.remove(currentWindows, i)
            return
         end
      end
      return
   end
   if event == "windowCreated" then
      table.insert(currentWindows, 1, w)
      return
   end
   if event == "windowFocused" then
      --otherwise is equivalent to delete and then create
      callback_window_created(w, appName, "windowDestroyed")
      callback_window_created(w, appName, "windowCreated")
   end
end
theWindows:subscribe(hs.window.filter.windowCreated, callback_window_created)
theWindows:subscribe(hs.window.filter.windowDestroyed, callback_window_created)
theWindows:subscribe(hs.window.filter.windowFocused, callback_window_created)

local function list_window_choices()
   local windowChoices = {}
   for i,w in ipairs(currentWindows) do
      if w ~= hs.window.focusedWindow() then
         table.insert(windowChoices, {
                         text = w:title() .. "--" .. w:application():name(),
                         subText = w:application():name(),
                         uuid = i,
                         image = hs.image.imageFromAppBundle(w:application():bundleID()),
                         win=w})
      end
   end
   return windowChoices;
end

local windowChooser = hs.chooser.new(function(choice)
      if not choice then
        return
      end
      local v = choice["win"]
      if v then
         v:focus()
      end
end)


local function show_chooser()
  local windowChoices = list_window_choices()
  windowChooser:choices(windowChoices)
  --windowChooser:placeholderText('')
  windowChooser:rows(12)
  windowChooser:query(nil)
  windowChooser:show()
end

hs.hotkey.bind({"alt"}, "tab", show_chooser)
