-- window table (see menu.lua)
window = {85, 0}

point = 1

while true do
	buttons.read()
	rama:blit(0,0)
	screen.print(window[1] + 10,window[2] + 35,"Select a color\npalette:",1.2)
	screen.print(window[1] + 40,window[2] + 90,"Default",0.9)
	screen.print(window[1] + 40,window[2] + 110,"Colorful",0.9)
	screen.print(window[1] + 10,window[2] + 230,"     - Enable",0.8)
	but1:blit(window[1] + 25,window[2] + 215)
	if buttons.up then
		point = point - 1
	end
	if buttons.down then
		point = point + 1
	end
	if point == 1 then
		pointer:blit(window[1] + 20,window[2] + 90)
		if buttons.cross then
			local file = assert(io.open("assets/data/color.lua", "w")) -- Открыть файл для записи (assert проверит ошибку)
			file:write("1", '\n')                           -- Записать значение переменной x и символ перевода строки
			assert(file:close())                          -- Закрыть файл (или выбросить ошибку)
		end
	end
	if point == 2 then
		pointer:blit(window[1] + 20,window[2] + 110)
		if buttons.cross then
			local file = assert(io.open("assets/data/color.lua", "w")) -- Открыть файл для записи (assert проверит ошибку)
			file:write("2", '\n')                           -- Записать значение переменной x и символ перевода строки
			assert(file:close()) 
		end
	end
	if point == 3 then
		point = 1
	end
	if point == 0 then
		point = 2
	end
	screen.flip()
	if buttons.cross then
		dofile("scripts/intro.lua")
	end
end