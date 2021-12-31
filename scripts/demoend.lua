
-- window table (see menu.lua)
window = {88, 0}

y = window[2] + 140
timer = 0

while true do
	buttons.read()
	screen.print(window[1] + 135,y,"5\n6",1.2)
	ramaam:blit(0,0)
	screen.print(window[1] + 160,window[2] + 140,"AM",1.2)
	if y > 120 then
		y = y - 0.25
	end
	nread = io.open("assets/data/night.lua", "r") -- Открыть файл для чтения
	if nread then                               -- Проверить, что он открылся
		night = nread:read()                    -- Прочитать первую строку в переменную x (без преобразования в число)                        -- Прочитать вторую строку в переменную y (тоже без преобразования)
		nread:close()                           -- Закрыть файл
	end
	if night == 1 then
		local file = assert(io.open("assets/data/night.lua", "w")) -- Открыть файл для записи (assert проверит ошибку)
		file:write("2")                           -- Записать значение переменной x и символ перевода строки
		assert(file:close()) 
	end
	if night == 2 then
		local file = assert(io.open("assets/data/night.lua", "w")) -- Открыть файл для записи (assert проверит ошибку)
		file:write("3")                           -- Записать значение переменной x и символ перевода строки
		assert(file:close()) 
	end
	if night == 3 then
		local file = assert(io.open("assets/data/night.lua", "w")) -- Открыть файл для записи (assert проверит ошибку)
		file:write("4")                           -- Записать значение переменной x и символ перевода строки
		assert(file:close()) 
	end
	if night == 4 then
		local file = assert(io.open("assets/data/night.lua", "w")) -- Открыть файл для записи (assert проверит ошибку)
		file:write("5")                           -- Записать значение переменной x и символ перевода строки
		assert(file:close()) 
	end
	if night == 5 then
		local file = assert(io.open("assets/data/night.lua", "w")) -- Открыть файл для записи (assert проверит ошибку)
		file:write("6")                           -- Записать значение переменной x и символ перевода строки
		assert(file:close()) 
	end
	if timer == 349 then
		dofile("scripts/menu.lua")
	end
	timer = timer + 1
	screen.flip()
end