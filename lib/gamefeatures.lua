function onefnaf_fade(mode, type, timeIn, timeOut, speedTime, offsetTime)
    local fadeInTimer = 0
    local fadeOutTimer = 0
    local offsetTimer = 0
    local fadeTransp = 0
    screen.print(0, 0, fadeTransp.."\n"..fadeInTimer)
    if type == "black" then
        blackfullscreen:blit(0, 0, fadeTransp)
        if mode == "in" then
            if fadeTransp < 255 then
                if fadeInTimer < 5 then
                    fadeInTimer = fadeInTimer + 1
                elseif fadeInTimer == 5 then
                    fadeTransp = fadeTransp + 100
                    fadeInTimer = 0
                end
            end
        end
    end
end

function onefnaf_drawcentered(y, imagetoblit, xoffset, opacity)
    local img_tob = imagetoblit
    local img_xof = xoffset
    if img_xof == nil then
        img_xof = 0
    end
    local img_x = 240 - (image.getw(img_tob) / 2)
    local img_y = y
    local img_op = opacity
    if img_op == nil then
        img_op = 255
    end

    img_tob:blit(img_x + img_xof, img_y, img_op)
end

function onefnaf_printcentered(y, texttoblit, size, xoffset)
    local txt_tob = texttoblit
    local txt_xof = xoffset
    if txt_xof == nil then
        txt_xof = 0
    end
    local txt_x = 240 + txt_xof
    local txt_y = y
    local txt_size = size
    white = color.new(255, 255, 255)
    black = color.new(0, 0, 0)

    screen.print(txt_x, txt_y, txt_tob, txt_size, white, black, __ACENTER)
end

function debug_print()
    if devmode == true then
		screen.print(0, 0, "Main debug:\n \nRAM: " .. os.ram() .. "/" .. os.totalram() .. "\nFPS: " .. screen.fps(), 0.6)
	else
        screen.print(0, 0, "ENABLE DEVMODE FIRST")
    end
end