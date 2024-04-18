txtcredits_y = 280

while true do
	buttons.read()

	white = color.new(255,255,255)
	black = color.new(0,0,0)

	txtcredits_y = txtcredits_y - 0.5

	screen.print(240,txtcredits_y,"JOLLY 2 PSP v. ".. config.version ..
	"\n \nOriginal game by:\nIvanG\n \nAll the assets/sounds \nbelong to him."..
	"\n \nPorted to\nPSP by MaxMafu."..
	"\n \nSoftware used:\n \nOneLua v4R1\nVisual Studio Code\nPaint.net\nGithub Desktop"..
	"\n \nThanks to:\n \nWeegeeDEV - explanation the AI\nfunctionality."..
	"\n \nSpecial people (thank you for your support!!):\n \n- TomKT\n- Yukigawai\n- Sora Cloud\n- AlexDev\n \n \nThanks for playing!\n \n2024", 0.7, white, black, __ACENTER)
	
	screen.flip()

	if buttons.cross then
		txtcredits_y = nil
		dofile("scripts/settings.lua")
	elseif buttons.circle then
		txtcredits_y = nil
		dofile("scripts/settings.lua")
	end
end