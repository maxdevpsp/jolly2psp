-- window table (see menu.lua)
window = {85, 0}
y = 280

while true do
	buttons.read()
	y = y - 0.5
	screen.print(window[1],y,"FNaF Pocket Horror Portable\n \nOriginal game by:\nNam Elprup\n \nAll the visual content belongs\nto him.\n \nThe game ported to\nPSP/PSVITA by maxlmao.\n \nSoft used:\n \nOneLua v4R1\nNotepad++\nPaint.net\nWinRAR\n \nThanks to:\n \nleon123mlg - testing and\ntranslating.\nFreDev - explaining about\nanimatronics AI.\n \nSpecial people:\n \nSpidogriz\nSchurOWO\nSatanicBug\nFreDev\nzanga\nAnimationStuff11\njuldis",0.9)
	screen.flip()
	if buttons.cross then
		dofile("scripts/menu.lua")
	end
end