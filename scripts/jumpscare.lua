_G.killed = 1

subject = image.load("assets/png/cutscenes/jumpscares/jolly/jolly1.png")

while true do
	buttons.read()
	jstimer = jstimer + 1
	if jstimer == 5 then
		jsframe = jsframe + 1
		jstimer = 0
	end

	subjectbg:blit(58,0)
	subject:blit(58,0)

	if jsframe == 1 then
		if _G.killed == 1 then
			subject = jollyjs1
		end
		if _G.killed == 2 then
			subject = image.load("assets/png/cutscenes/jumpscares/bonnie/1.png")
		end
		if _G.killed == 3 then
			subject = image.load("assets/png/cutscenes/jumpscares/chica/1.png")
		end
		if _G.killed == 4 then
			subject = image.load("assets/png/cutscenes/jumpscares/foxy/1.png")
		end
	end
	if jsframe == 2 then
		if _G.killed == 1 then
			subject = jollyjs2
		end
		if _G.killed == 2 then
			subject = image.load("assets/png/cutscenes/jumpscares/bonnie/2.png")
		end
		if _G.killed == 3 then
			subject = image.load("assets/png/cutscenes/jumpscares/chica/2.png")
		end
		if _G.killed == 4 then
			subject = image.load("assets/png/cutscenes/jumpscares/foxy/2.png")
		end
	end
	if jsframe == 3 then
		if _G.killed == 1 then
			subject = jollyjs3
		end
		if _G.killed == 2 then
			subject = image.load("assets/png/cutscenes/jumpscares/bonnie/2.png")
		end
		if _G.killed == 3 then
			subject = image.load("assets/png/cutscenes/jumpscares/chica/2.png")
		end
		if _G.killed == 4 then
			subject = image.load("assets/png/cutscenes/jumpscares/foxy/2.png")
		end
	end
	if jsframe == 4 then
		if _G.killed == 1 then
			subject = jollyjs4
		end
		if _G.killed == 2 then
			subject = image.load("assets/png/cutscenes/jumpscares/bonnie/2.png")
		end
		if _G.killed == 3 then
			subject = image.load("assets/png/cutscenes/jumpscares/chica/2.png")
		end
		if _G.killed == 4 then
			subject = image.load("assets/png/cutscenes/jumpscares/foxy/2.png")
		end
	end
	if jsframe == 5 then
		if _G.killed == 1 then
			subject = jollyjs5
		end
		if _G.killed == 2 then
			subject = image.load("assets/png/cutscenes/jumpscares/bonnie/2.png")
		end
		if _G.killed == 3 then
			subject = image.load("assets/png/cutscenes/jumpscares/chica/2.png")
		end
		if _G.killed == 4 then
			subject = image.load("assets/png/cutscenes/jumpscares/foxy/2.png")
		end
	end
	if jsframe == 6 then
		if _G.killed == 1 then
			subject = jollyjs6
		end
		if _G.killed == 2 then
			subject = image.load("assets/png/cutscenes/jumpscares/bonnie/2.png")
		end
		if _G.killed == 3 then
			subject = image.load("assets/png/cutscenes/jumpscares/chica/2.png")
		end
		if _G.killed == 4 then
			subject = image.load("assets/png/cutscenes/jumpscares/foxy/2.png")
		end
	end
	if jsframe == 7 then
		if _G.killed == 1 then
			subject = jollyjs7
		end
		if _G.killed == 2 then
			subject = image.load("assets/png/cutscenes/jumpscares/bonnie/2.png")
		end
		if _G.killed == 3 then
			subject = image.load("assets/png/cutscenes/jumpscares/chica/2.png")
		end
		if _G.killed == 4 then
			subject = image.load("assets/png/cutscenes/jumpscares/foxy/2.png")
		end
	end
	if jsframe == 8 then
		if _G.killed == 1 then
			subject = jollyjs8
		end
		if _G.killed == 2 then
			subject = image.load("assets/png/cutscenes/jumpscares/bonnie/2.png")
		end
		if _G.killed == 3 then
			subject = image.load("assets/png/cutscenes/jumpscares/chica/2.png")
		end
		if _G.killed == 4 then
			subject = image.load("assets/png/cutscenes/jumpscares/foxy/2.png")
		end
	end
	if jsframe == 9 then
		if _G.killed == 1 then
			subject = jollyjs9
		end
		if _G.killed == 2 then
			subject = image.load("assets/png/cutscenes/jumpscares/bonnie/2.png")
		end
		if _G.killed == 3 then
			subject = image.load("assets/png/cutscenes/jumpscares/chica/2.png")
		end
		if _G.killed == 4 then
			subject = image.load("assets/png/cutscenes/jumpscares/foxy/2.png")
		end
	end
	if jsframe == 10 then
		if _G.killed == 1 then
			subject = jollyjs10
		end
		if _G.killed == 2 then
			subject = image.load("assets/png/cutscenes/jumpscares/bonnie/2.png")
		end
		if _G.killed == 3 then
			subject = image.load("assets/png/cutscenes/jumpscares/chica/2.png")
		end
		if _G.killed == 4 then
			subject = image.load("assets/png/cutscenes/jumpscares/foxy/2.png")
		end
	end
	if buttons.square then
		jsframe = 1
	end
	--[[if jsframe == 17 then -- TURN OFF WHILE DEBUGGING
		dofile("scripts/gameover.lua")
	end]]
	screen.flip()
end