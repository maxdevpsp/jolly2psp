txtcredits_y = 280

while true do
	buttons.read()

	white = color.new(255,255,255)
	black = color.new(0,0,0)

	txtcredits_y = txtcredits_y - 0.5

	screen.print(240,txtcredits_y,"JOLLY 2 PSP v. "..version..
	"\n \nOriginal game by:\nIvanG\n \nAll assets/sounds \nbelong to him."..
	"\n \nThe game ported to\nPSP by maxdev."..
	"\n \nSoft used:\n \nOneLua v4R1\nVisual Studio Code\nPaint.net\nGithub Desktop"..
	"\n \nThanks to:\n \nWeegeeDEV - explaining\nabout the\nAI."..
	"\n \nSpecial people (thank you for your support!!):\n \n- TomKT\n- SchurOWO\n- SatanicBug\n- mitaray\n- Sora Yoshikawa\n- Whole AlexDev server (hehe)\n- AlexDev\n \n \nThanks for playing!\n \n2022",0.7, white, black, __ACENTER)
	
	screen.flip()

	if buttons.cross then
		txtcredits_y = nil
		dofile("scripts/settings.lua")
	elseif buttons.circle then
		txtcredits_y = nil
		dofile("scripts/settings.lua")
	end
end