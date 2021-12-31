-- a menu screen.
-- loading assets
local bg = image.load("assets/png/title/freddy/1.png")
local pointer = image.load("assets/png/gui/pointer.png")

-- now the main table that will be used literally everywhere!
-- as i dont know where will be the game frame in actual port/mods, i will use these to correct it.
window = {85, 0}

-- variables
point = 1

while true do
	buttons.read()
	bg:blit(window[1],window[2])
	screen.print(window[1] + 50,window[2] + 150,"Neues Spiel",1.2)
	screen.print(window[1] + 50,window[2] + 170,"Fortsetzen",1.2)
	screen.print(window[1] + 50,window[2] + 190,"Password",1.2)
	screen.print(window[1] + 50,window[2] + 210,"Optionen",1.2)
	screen.print(window[1] + 0,window[2] + 260,"'99 Scott Games",1.2)
	if buttons.up then
		point = point - 1
	end
	if buttons.down then
		point = point + 1
	end
	if point == 1 then
		pointer:blit(window[1] + 40,window[2] + 150)
		if buttons.cross then
			save = io.open("assets/data/night.lua", "w+")
			save:close()
			save = io.open("assets/data/night.lua", "a")
			save:write("return {night = 1}")
			save:close()
			dofile("scripts/call.lua")
		end
	end
	if point == 2 then
		pointer:blit(window[1] + 40,window[2] + 170)
		-- getting night
		local whatNight  = require "assets/data/night"
		screen.print(window[1] + 225,window[2] + 170,whatNight.night,1.2)
		if buttons.cross then
			dofile("scripts/whatnight.lua")
		end
	end
	if point == 3 then
		pointer:blit(window[1] + 40,window[2] + 190)
		if buttons.cross then
			dofile("scripts/forbidden.lua")
		end
	end
	if point == 4 then
		pointer:blit(window[1] + 40,window[2] + 210)
		if buttons.cross then
			dofile("scripts/settings.lua")
		end
	end
	if point == 5 then
		point = 1
	end
	if point == 0 then
		point = 4
	end
    screen.flip()
end