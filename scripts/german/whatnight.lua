-- loading assets
local static = image.load("assets/png/gui/static/1.png")

-- window table (see menu.lua)
window = {85, 0}

-- variables
timer = 0

while true do
	timer = timer + 1
	if timer < 150 then
		static:blit(window[1],window[2])
	end
	if timer < 300 then
		if timer > 150 then
			screen.print(window[1] + 100,window[2] + 100,"12 AM",1.6)
			local whatNight  = require "assets/data/night"
			screen.print(window[1] + 90,window[2] + 150,"Nacht",1.6)
			screen.print(window[1] + 210,window[2] + 150,whatNight.night,1.6)
		end
	end
	if timer == 300 then
		dofile("scripts/gameprocess.lua")
	end
	screen.flip()
end