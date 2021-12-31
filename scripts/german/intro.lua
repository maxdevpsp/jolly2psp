-- loading assets
local static = image.load("assets/png/gui/static/1.png")
local nam = image.load("assets/png/title/nam.png")

-- window table (see menu.lua)
window = {85, 0}

-- variables
timer = 0
staticv = 1

while true do
	timer = timer + 1
	if timer < 150 then
		static:blit(window[1],window[2])
	end
	if timer < 500 then
		if timer > 150 then
			nam:blit(window[1],window[2])
		end
		if timer > 200 then
			screen.print(window[1] + 45,window[2] + 40,"EIN SPIEL VON",1.2)
			screen.print(window[1] + 50,window[2] + 240,"NAM ELPRUP",1.6)
		end
	end
	if timer < 1000 then
		if timer > 550 then
			screen.print(window[1],window[2] + 100,"  Dieses Spiel enthält:\n   blinkende Lichter,\n   laute Geräusche,\n und viele Jumpscares!",0.8)
		end
		if timer > 800 then
			static:blit(window[1],window[2])
		end
	end
	if timer == 1000 then
		dofile("scripts/menu.lua")
	end
	screen.flip()
end