while true do
	white = color.new(255, 255, 255)
    black = color.new(0, 0, 0)
	sound.stop(menumusic)
	office1:blit(0, 0)
	--blackfullscreen:blit(0, 0, whatnight_tr[1])
	--screen.print(240, 128, "whatnight_txt", 1, white, black, __ACENTER)
	if night == 1 then
		nightnum = nightnum_1
	end
	nightnum:blit(0, 0, whatnight_tr[1])
	blackfullscreen:blit(0, 0, whatnight_tr[2])
	if whatnight_tr[2] > 0 then
		whatnight_tr[2] = whatnight_tr[2] - 2
	end
	if whatnight_tr[2] < 0 then
		whatnight_timer = whatnight_timer + 1
		if whatnight_timer == 30 then
			whatnight_tr[3] = true
		end
	end
	if whatnight_tr[3] == true then
		if whatnight_tr[1] > 0 then
			whatnight_tr[1] = whatnight_tr[1] - 2
		elseif whatnight_tr[1] < 0 then
			j2_assets("nil", "whatnight")
			j2_assets("load", "gameprocess")
			j2_assets("load", "ai")
			dofile("scripts/gameprocessre.lua")
		end
	end
	--[[if timer == 300 then
		dofile("scripts/gameprocessre.lua")
	end]]
	screen.flip()
end