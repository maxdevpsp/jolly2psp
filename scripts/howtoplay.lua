--[[
    
              This is part of the
    ----------------------------------------
                  JOLLY 2 PSP
    ----------------------------------------
                made by MaxMafu
          Make sure to credit properly!

    The how-to-play screen.
]]

-- White and black fade effects
local fadeWhite = image.new(480, 272, color.white)
local whiteT = 256
local fadeBlack = image.new(480, 272, color.black)
local blackT = 0
local fadeBack = false

while true do
	-- Buttons input
	buttons.read()

	-- Rendering the how-to image
	htp_img:blit(0,0)

	-- White fade at the start
	fadeWhite:blit(0, 0, whiteT)
	fadeBlack:blit(0, 0, blackT)
	sol.print("c", 0, 131, lang.howToPlay[1], 1.4, color.new(255, 255, 255, blackT))
	if whiteT > 0 then
		whiteT -= 10
	end

	-- The bye bye effect
	if buttons.cross then
		--gm.jump(6, true, true)
		if blackT == 0 then
			fadeBack = true
		end
	end

	-- The fade back effect
	if blackT < 256 and fadeBack then
		blackT += 3
	end

	-- Going to the menu if the fade animation has ended
	if fadeBack and blackT >= 256 then
		gm.jump("game")
	end

	-- Classic flip screen
	screen.flip()
end