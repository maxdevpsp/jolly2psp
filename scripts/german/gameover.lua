-- loading assets
local static = image.load("assets/png/gui/static/1.png")
local bg = image.load("assets/png/cutscenes/gameover/hibitch.png")

-- window table (see menu.lua)
window = {85, 0}

-- variables
timer = 0

while true do
	timer = timer + 1
	if timer < 150 then
		static:blit(window[1],window[2])
	end
	if timer < 500 then
		if timer > 150 then
			bg:blit(window[1],window[2])
			screen.print(window[1],window[2] + 30,"    GAME OVER",1.5)
		end
	end
	if timer == 500 then
		dofile("scripts/menu.lua")
	end
	screen.flip()
end