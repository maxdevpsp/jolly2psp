j2_assets("nil", "menu")
while true do
	buttons.read()
	white = color.new(255,255,255)
	black = color.new(0,0,0)
	--[[screen.print(135,45,"HOW TO PLAY?",1.2)
	screen.print(240,70,"Office movement - Left/Right\nDoor shock - Left Trigger/Right Trigger\n",0.8, white, black, __ACENTER)
	screen.print(90,250,"     - Continue",0.8)
	but1:blit(105,235)]]
	htp_img:blit(0,0)
	screen.flip()
	if buttons.cross then
		j2_assets("nil", "htp")
		j2_assets("load", "whatnight")
		dofile("scripts/whatnight.lua")
	end
end