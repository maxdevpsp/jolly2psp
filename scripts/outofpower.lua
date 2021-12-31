
-- window table (see menu.lua)
window = {85, 0}

timer = 0
blink = 0

while true do
	buttons.read()
	rama:blit(0,0)
	timer = timer + 1
	if timer > 300 then
		makeupgirls:blit(window[1] + 25,window[2] + 100)
	end
	if timer == 1100 then
		_G.killed = 1
		dofile("scripts/jumpscare.lua")
	end
	screen.flip()
end