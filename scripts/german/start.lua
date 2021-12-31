-- window table (see menu.lua)
window = {85, 0}

while true do
	buttons.read()
	screen.print(window[1],window[2] + 50,"INFORMATION:",1.2)
	screen.print(window[1],window[2] + 70,"Das Spiel gehört mir nicht,\nich habe es nur portiert.\nDas ursprüngliche Spiel ist\nvon Nam Elprup. Der Port wird\nauf Anfrage des ursprünglichen\nEntwicklers entfernt.",0.8)
	screen.print(window[1],window[2] + 230,"Drücken Sie X, um fortzufahren.",0.8)
	screen.flip()
	if buttons.cross then
		dofile("scripts/intro.lua")
	end
end