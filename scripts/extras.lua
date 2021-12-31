while true do
    buttons.read()

    -- Drawing BG
    bgEX:blit(0,0)

    -- Drawing Animatronic Placeholder
    animEX:blit(105,0)

    -- Drawing Text
    screen.print(20,25,"Extras",1.2)
    if extrasection[1] == 0 then
        screen.print(20,105,">Animatronics",0.8)
    else
        screen.print(20,105,"Animatronics",0.8)
    end
    if extrasection[1] == 1 then
        screen.print(20,135,">Jumpscares",0.8)
    else
        screen.print(20,135,"Jumpscares",0.8)
    end
    if extrasection[1] == 2 then
        screen.print(20,165,">Making Foxy",0.8)
    else
        screen.print(20,165,"Making Foxy",0.8)
    end
    if extrasection[1] == 3 then
        screen.print(20,195,">Behind The Scenes",0.8)
    else
        screen.print(20,195,"Behind The Scenes",0.8)
    end
    if extrasection[1] == 4 then
        screen.print(20,225,">PSP Port Special",0.8)
    else
        screen.print(20,225,"PSP Port Special",0.8)
    end

    white = color.new(255,255,255)
	black = color.new(0,0,0)
    screen.print(360,25,extraname,1,white,black,__ACENTER)

    screen.print(0,0,"MAIN DEBUGGER done by maxlmao\nIn-Game debug (put what you want to debug here):\n \nExtrasection: "..extrasection[1]..", "..tostring(extrasection[2])..", "..extrasection[3].."\n \nMain debug:\n \nRAM: "..os.ram().."/"..os.totalram(),0.4)

    -- Choosing section
if extrasection[2] == false then
    if buttons.down then
        extrasection[1] = extrasection[1] + 1
    elseif buttons.up then
        extrasection[1] = extrasection[1] - 1
    end
    if extrasection[1] == 5 then
        extrasection[1] = 0
    elseif extrasection[1] == -1 then
        extrasection[1] = 4
    end
end

    if buttons.cross then
        extrasection[2] = true
    end
    if buttons.circle then
        if extrasection[2] == true then
            extrasection[2] = false
        else
            dofile("scripts/menu.lua")
        end
    end

    if buttons.left and extrasection[2] == true then
        extrasection[3] = extrasection[3] - 1
    elseif buttons.right and extrasection[2] == true then
        extrasection[3] = extrasection[3] + 1
    end

    if extrasection[2] == false then
        extrasection[3] = 0
        extraname = ""
        animEX = animEXre
    end

    -- Animatronics
    if extrasection[2] == true and extrasection[1] == 0 then
        if extrasection[3] == 0 then
            extraname = "George"
            animEX = georgeEX
        end
        if extrasection[3] == 1 then
            extraname = "Bonnie"
            animEX = bonnieEX
        end
        if extrasection[3] == 2 then
            extraname = "Chica"
            animEX = chicaEX
        end
        if extrasection[3] == 3 then
            extraname = "Freddy"
            animEX = freddyEX
        end
        if extrasection[3] == 4 then
            extraname = "Jolly"
            animEX = jollyEX
        end
        if extrasection[3] == 5 then
            extrasection[3] = 4
        end
        if extrasection[3] == -1 then
            extrasection[3] = 0
        end
    end
    screen.flip()
end