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