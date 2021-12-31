-- window table (see menu.lua)
window = {85, 0}
local success = false

while true do
	buttons.read()
	screen.print(window[1] + 60,window[2] + 50,"debug",1.2)
	screen.print(window[1] + 20,window[2] + 70,"debugtext",0.8)
	screen.print(window[1] + 10,window[2] + 230,"debugbutton",0.8)
	onefnaf_fade("in", "black", 0, 0, 2)
	screen.flip()
	if buttons.cross then
		dofile("scripts/menu.lua")
	end
end