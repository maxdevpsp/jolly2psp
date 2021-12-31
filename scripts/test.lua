local timera = 0
local a1 = image.load("assets/png/gameprocess/office/anim/1_1.png")
local a2 = image.load("assets/png/gameprocess/office/anim/1_2.png")
local a3 = image.load("assets/png/gameprocess/office/anim/2_1.png")
local a4 = image.load("assets/png/gameprocess/office/anim/2_2.png")
local a5 = image.load("assets/png/gameprocess/office/anim/3_1.png")
local a6 = image.load("assets/png/gameprocess/office/anim/3_2.png")
local a7 = image.load("assets/png/gameprocess/office/anim/4_1.png")
local a8 = image.load("assets/png/gameprocess/office/anim/4_2.png")
local a9 = image.load("assets/png/gameprocess/office/anim/5_1.png")
local a10 = image.load("assets/png/gameprocess/office/anim/5_2.png")
local a11 = image.load("assets/png/gameprocess/office/anim/6_1.png")
local a12 = image.load("assets/png/gameprocess/office/anim/6_2.png")
local a13 = image.load("assets/png/gameprocess/office/anim/7_1.png")
local a14 = image.load("assets/png/gameprocess/office/anim/7_2.png")
local a15 = image.load("assets/png/gameprocess/office/anim/8_1.png")
local a16 = image.load("assets/png/gameprocess/office/anim/8_2.png")
local a17 = image.load("assets/png/gameprocess/office/anim/9_1.png")
local a18 = image.load("assets/png/gameprocess/office/anim/9_2.png")
local a19 = image.load("assets/png/gameprocess/office/anim/10_1.png")
local a20 = image.load("assets/png/gameprocess/office/anim/10_2.png")

while true do
    buttons.read()
    office1:blit(scroll[1],scroll[2])
	office2:blit(scroll[1] + 480,scroll[2])
    screen.print(0,0,"MAIN DEBUGGER done by maxlmao\nIn-Game debug (put what you want to debug here):\n \nScroll X: "..scroll[1].."\nisUp: "..isUp.."\nWhichTaken: "..whichtaken .."\n \nMain debug:\n \nRAM: "..os.ram().."/"..os.totalram().."\nFPS: "..screen.fps(),0.4)
    timera = timera + 0.25
    if timera == 1 then
        office1 = a1
        office2 = a2
    elseif timera == 2 then
        office1 = a3
        office2 = a4
    elseif timera == 3 then
        office1 = a5
        office2 = a6
    elseif timera == 4 then
        office1 = a7
        office2 = a8
    elseif timera == 5 then
        office1 = a9
        office2 = a10
    elseif timera == 6 then
        office1 = a11
        office2 = a12
    elseif timera == 7 then
        office1 = a13
        office2 = a14
    elseif timera == 8 then
        office1 = a15
        office2 = a16
    elseif timera == 9 then
        office1 = a17
        office2 = a18
    elseif timera == 10 then
        office1 = a19
        office2 = a20
    end
    if buttons.square then
        timera = 0
    end
    screen.flip()
end