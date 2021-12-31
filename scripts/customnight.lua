-- loading assets
local rama = image.load("assets/png/gui/rama.png")
local but1 = image.load("assets/png/gui/buttons/cross.png")

-- window table (see menu.lua)
window = {85, 0}

while true do
	buttons.read()
	rama:blit(0,0)
	screen.print(window[1] + 60,window[2] + 50,"debug",1.2)
	screen.print(window[1] + 20,window[2] + 70,"debugtext",0.8)
	screen.print(window[1] + 10,window[2] + 230,"debugbutton",0.8)
	but1:blit(window[1] + 25,window[2] + 215)
	screen.flip()
	if buttons.cross then
		dofile("scripts/menu.lua")
	end
end
