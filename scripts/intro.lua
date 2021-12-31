j2_assets("load", "intro")
j2_assets("load", "static")
j2_assets("load", "effects")

while true do

	--[[static1 = image.load("assets/png/gui/static/1.png")
	static1_re = image.load("assets/png/gui/static/1.png")
	static2 = image.load("assets/png/gui/static/2.png")
	static3 = image.load("assets/png/gui/static/3.png")]]

	-- Playing menu theme
	if sound.endstream(menumusic) == true then
		sound.play(menumusic)
	end

	-- Frame timer.
	intro_frametimer = intro_frametimer + 1

	-- Static timer and animation.
	if intro_statictimer < 3 then
		intro_statictimer = intro_statictimer + 0.5
	end
	if intro_statictimer == 3 then
		intro_statictimer = 0
	end
	if intro_statictimer == 0 then
		static1 = static1_re
	end
	if intro_statictimer == 1 then
		static1 = static2
	end
	if intro_statictimer == 2 then
		static1 = static3
	end

	-- Drawing static.
	static1:blit(0,0)

	-- Other
	logo_menu:blit(90,110,transp[1])
	wheel:blit(130,110,transp[2])
	-- Transp Animation
	if transp[2] < 255 then
		transp[2] = transp[2] + 2
	end
	if transp[1] < 255 then
		transp[1] = transp[1] + 1
	end
	if intro_frametimer == 400 then
		j2_assets("nil", "intro")
		dofile("scripts/menu.lua")
	end

	-- Black fade at the start
	blackfullscreen:blit(0, 0, blackfstransp)
	if blackfstransp > 0 then
		blackfstransp = blackfstransp - 5
	end
	screen.flip()
end