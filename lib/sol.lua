--[[
    SimpleOL by maxdev
]]

sol = {}

--[[
    BASE
]]

function sol.init()
    -- Loading basic colors
    color.loadpalette()
end

--[[
    IMAGE AND TEXT
]]

function sol.draw(mode, x, y, image, transp)
    if transp == nil then -- If not given transperency,
        transp = 255 -- We set it to visible (max transperency)
    end

    if mode == "r" then -- Regular Mode
        image:blit(x, y, transp) -- We just draw the image
    
    elseif mode == "c" then -- Centered Mode
        local image_newX = 240 - (image.getw(image) / 2) -- Half of PSP's screen - (width of given image / 2)
        image:blit(image_newX + x, y) -- WARNING: if you use centered mode, your x variable is x OFFSET.
    end
end

function sol.print(mode, x, y, text, size, col1, col2)
    -- Init! ! ! ! !
    sol.init()

    if transp == nil then -- If not given transperency,
        transp = 255 -- We set it to visible (max transperency)
    end

    if size == nil then -- If not given size,
        size = 0.8 -- We set it to 0.8
    end

    if col1 == nil then -- If not given color 1,
        col1 = color.white -- We set it to white
    end

    if col2 == nil then -- If not given color 2,
        col2 = color.new(0, 0, 0) -- We set it to black
    end

    if mode == "l" then -- Regular Mode (__ALEFT)
        screen.print(x, y, text, 0.1 + size, col1, col2, __ALEFT) -- We just draw the text
    
    elseif mode == "c" then -- Centered Mode (__ACENTER)
        screen.print(240 + x, y, text, 0.1 + size, col1, col2, __ACENTER) -- WARNING: if you use centered mode, your x variable is x OFFSET.
    end
end

--[[
    SAVE AND LOAD
]]

function sol.saveIntoFile(path, value)
    local saveFile = io.open(path, 'w') -- Opening given file for editing
    if saveFile then
        saveFile:write(tostring(value)) -- Writing given value
        saveFile:close() -- Closing the file
    end
    return true
end

function sol.loadFromFile(path)
    local file = io.open(path, "r") -- Opening given file for reading
    local valueToGive = ""
    if file then
        valueToGive = file:read() -- Reading the file's contents
        file:close() -- Closing the file
    end
    return valueToGive -- Returning the info from the file
end  

--[[
    DEBUG
]]

function sol.showDebug()
    if config.devmode == true then -- You have to enable your devmode first.
        screen.print(0, 0, "RAM: " .. os.ram() .. "/" .. os.totalram() .. "\nFPS: " .. screen.fps(), 0.5)
    end
end

return sol