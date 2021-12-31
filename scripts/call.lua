-- phone call

local line = 1
local text = "Placeholder"
local timer = 0
local nexta = false

while true do
	buttons.read()
	rama:blit(0,0)
	bgcall:blit(window[1],window[2])
	textbox:blit(window[1],window[2] + 190)
	screen.print(window[1] + 18,window[2] + 220,text,0.8)
	screen.print(window[1] + 5,window[2] + 5,timer,0.5)
	if timer < 100 then
		timer = timer + 1
		nexta = false
	end
	if timer >= 100 then
		nexta = true
	end
	if buttons.cross and nexta == true then
		line = line + 1
		timer = 0
	end
	if buttons.square then
		timer = timer + 100
	end
	-- text strings
	if night == 1 then
		if line == 1 then
			text = "Ring... Ring..."
		end
		if line == 2 then
			text = "Ring... Ring..."
		end
		if line == 3 then
			text = "Hello, hello? Uh..."
		end
		if line == 4 then
			text = "Welcome to Freddy\nFazbear's Pizza!"
		end
		if line == 5 then
			text = "Where fantasy comes\nto life..."
		end
		if line == 6 then
			text = "Blah blah blah..."
		end
		if line == 7 then
			text = "The company is\nnot responsible for"
		end
		if line == 8 then
			text = "damage to property\nor person..."
		end
		if line == 9 then
			text = "Blah blah blah..."
		end
		if line == 10 then
			text = "...missing person\nreport..."
		end
		if line == 11 then
			text = "Blah blah blah..."
		end
		if line == 12 then
			text = "Sorry, I'm obliged\nto read that."
		end
		if line == 13 then
			text = "Uh, it's a legal\nthing, you know..."
		end
		if line == 14 then
			text = "Um..."
		end
		if line == 15 then
			text = "I know that may sound\nbad and all,"
		end
		if line == 16 then
			text = "but there's nothing\nto worry about."
		end
		if line == 17 then
			text = "I actually worked\nthere before you."
		end
		if line == 18 then
			text = "I'm finishing up\nmy last week now."
		end
		if line == 19 then
			text = "I know it can be over-\nwhelming, so"
		end
		if line == 20 then
			text = "I wanted to record\nthis message"
		end
		if line == 21 then
			text = "to guide you on\nyour first night."
		end
		if line == 22 then
			text = "So, as i said, nothing\nto worry."
		end
		if line == 23 then
			text = "You'll do just fine."
		end
		if line == 24 then
			text = "Now, about the\nanimatronics..."
		end
		if line == 25 then
			text = "They used to roam\nduring the day,"
		end
		if line == 26 then
			text = "but then there was\nThe Bite of '87."
		end
		if line == 27 then
			text = "..."
		end
		if line == 28 then
			text = "It's impressive how\nhuman body can"
		end
		if line == 29 then
			text = "survive without a\nfrontal lobe..."
		end
		if line == 30 then
			text = "Forget that.\nThe point is:"
		end
		if line == 31 then
			text = "Now they free roam\nduring the night."
		end
		if line == 32 then
			text = "It prevents them\nfrom locking up."
		end
		if line == 33 then
			text = "Because of that,\nthey may, uh..."
		end
		if line == 34 then
			text = "...wander into your\noffice and..."
		end
		if line == 35 then
			text = "...mistake you for\nanendoskeleton..."
		end
		if line == 36 then
			text = "...try and stuff you\ninto a suit..."
		end
		if line == 37 then
			text = "...that might cause\nyou some..."
		end
		if line == 38 then
			text = "...discomfort..."
		end
		if line == 39 then
			text = "...and death."
		end
		if line == 40 then
			text = "..."
		end
		if line == 41 then
			text = "To prevent that from\nhappening,"
		end
		if line == 42 then
			text = "Press TRIANGLE to\nflip the monitor"
		end
		if line == 43 then
			text = "to see where they\ncurrently are."
		end
		if line == 44 then
			text = "Pressing it again\nwill flip the monitor"
		end
		if line == 45 then
			text = "back."
		end
		if line == 46 then
			text = "If you can't find any\nof them,"
		end
		if line == 47 then
			text = "then it means they are\nby the door."
		end
		if line == 48 then
			text = "Hold LEFT or\nRIGHT to select a door,"
		end
		if line == 49 then
			text = "X to turn on the\nhall light,"
		end
		if line == 50 then
			text = "and SQUARE to shut the\ndoor."
		end
		if line == 51 then
			text = "That'll make them\nleave."
		end
		if line == 52 then
			text = "For a while."
		end
		if line == 53 then
			text = "Well, that's it for\nnow."
		end
		if line == 54 then
			text = "Hope you are not\noverwhelmed."
		end
		if line == 55 then
			text = "Oh, and check the\npower meter."
		end
		if line == 56 then
			text = "Power is very limited\nhere."
		end
		if line == 57 then
			text = "Alright, good night."
		end
		if line == 58 then
			dofile("scripts/whatnight.lua")
		end
	end
	if night == 2 then
		if line == 1 then
			text = "Ring... Ring..."
		end
		if line == 2 then
			text = "Ring... Ring..."
		end
		if line == 3 then
			text = "Hello, hello? Uh..."
		end
		if line == 4 then
			text = "If you're hearing this,\nthen..."
		end
		if line == 5 then
			text = "it means you made it\nto night two!"
		end
		if line == 6 then
			text = "Uh, congrats!"
		end
		if line == 7 then
			text = "I won't talk as much this time,"
		end
		if line == 8 then
			text = "since they tent to become\nmore"
		end
		if line == 9 then
			text = "aggresive as the week\n progresses."
		end
		if line == 10 then
			text = "...missing person\nreport..."
		end
		if line == 11 then
			text = "Blah blah blah..."
		end
		if line == 12 then
			text = "Sorry, I'm obliged\nto read that."
		end
		if line == 13 then
			text = "Uh, it's a legal\nthing, you know..."
		end
		if line == 14 then
			text = "Um..."
		end
		if line == 15 then
			text = "I know that may sound\nbad and all,"
		end
		if line == 16 then
			text = "but there's nothing\nto worry about."
		end
		if line == 17 then
			text = "I actually worked\nthere before you."
		end
		if line == 18 then
			text = "I'm finishing up\nmy last week now."
		end
		if line == 19 then
			text = "I know it can be over-\nwhelming, so"
		end
		if line == 20 then
			text = "I wanted to record\nthis message"
		end
		if line == 21 then
			text = "to guide you on\nyour first night."
		end
		if line == 22 then
			text = "So, as i said, nothing\nto worry."
		end
		if line == 23 then
			text = "You'll do just fine."
		end
		if line == 24 then
			text = "Now, about the\nanimatronics..."
		end
		if line == 25 then
			text = "They used to roam\nduring the day,"
		end
		if line == 26 then
			text = "but then there was\nThe Bite of '87."
		end
		if line == 27 then
			text = "..."
		end
		if line == 28 then
			text = "It's impressive how\nhuman body can"
		end
		if line == 29 then
			text = "survive without a\nfrontal lobe..."
		end
		if line == 30 then
			text = "Forget that.\nThe point is:"
		end
		if line == 31 then
			text = "Now they free roam\nduring the night."
		end
		if line == 32 then
			text = "It prevents them\nfrom locking up."
		end
		if line == 33 then
			text = "Because of that,\nthey may, uh..."
		end
		if line == 34 then
			text = "...wander into your\noffice and..."
		end
		if line == 35 then
			text = "...mistake you for\nanendoskeleton..."
		end
		if line == 36 then
			text = "...try and stuff you\ninto a suit..."
		end
		if line == 37 then
			text = "...that might cause\nyou some..."
		end
		if line == 38 then
			text = "...discomfort..."
		end
		if line == 39 then
			text = "...and death."
		end
		if line == 40 then
			text = "..."
		end
		if line == 41 then
			text = "To prevent that from\nhappening,"
		end
		if line == 42 then
			text = "Press TRIANGLE to\nflip the monitor"
		end
		if line == 43 then
			text = "to see where they\ncurrently are."
		end
		if line == 44 then
			text = "Pressing it again\nwill flip the monitor"
		end
		if line == 45 then
			text = "back."
		end
		if line == 46 then
			text = "If you can't find any\nof them,"
		end
		if line == 47 then
			text = "then it means they are\nby the door."
		end
		if line == 48 then
			text = "Hold LEFT or\nRIGHT to select a door,"
		end
		if line == 49 then
			text = "X to turn on the\nhall light,"
		end
		if line == 50 then
			text = "and SQUARE to shut the\ndoor."
		end
		if line == 51 then
			text = "That'll make them\nleave."
		end
		if line == 52 then
			text = "For a while."
		end
		if line == 53 then
			text = "Well, that's it for\nnow."
		end
		if line == 54 then
			text = "Hope you are not\noverwhelmed."
		end
		if line == 55 then
			text = "Oh, and check the\npower meter."
		end
		if line == 56 then
			text = "Power is very limited\nhere."
		end
		if line == 57 then
			text = "Alright, good night."
		end
		if line == 58 then
			dofile("scripts/whatnight.lua")
		end
	end
    screen.flip()
end