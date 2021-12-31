function onefnaf_save(filepath, value)
    local file = io.open(filepath,'w') -- opening file for editing
    if file then
        file:write(tostring(value)) -- writing value
        file:close()
    end
    return value -- returning value for night variable
end
function onefnaf_load(filepath)
    local file = io.open(filepath, "r")
    local night_var = 0
    if file then
        night_var = file:read()
        file:close()
    end
    return night_var
end