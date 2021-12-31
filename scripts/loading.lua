-- 'success' variable for knowing if the assets have loaded; 
-- loadingtimer is made for making sense of loading screen 
local success = {false, false}
local loadingtimer = 0

while true do
    buttons.read() -- IDK why do we do that lol

    loadscreen:blit(0, 0)
 
    loadingtimer = loadingtimer + 1
    if loadingtimer == 100 then
        success[1] = j2_assets("nil", "menu")
        if success[1] == true then
            j2_assets("load", "effects")
			j2_assets("load", "whatnight")
			j2_assets("load", "ai")
            success[2] = j2_assets("load", "gameprocess")
        end
        if success[2] == true then
            success = nil
            loadingtimer = nil
            dofile("scripts/whatnight.lua")
        end
    end
    screen.flip()
end