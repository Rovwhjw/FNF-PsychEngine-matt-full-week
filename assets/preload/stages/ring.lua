function onCreate()
	makeAnimatedLuaSprite('bg', 'boxwall', -550, -930)
	addAnimationByPrefix('bg', 'orange', 'wallboom instance 2', 24, true)
	addAnimationByPrefix('bg', 'blue', 'wallboom instance 1', 24, true)

	makeAnimatedLuaSprite('floor', 'boxfloor',  -525, -60)
	addAnimationByPrefix('floor', 'bruh', 'bg instance 1', 24, true)

	addLuaSprite('bg', false)
	addLuaSprite('floor', false)
end

function onSectionHit()
	if not mustHitSection then
		if curBeat % 4 == 0 then
			objectPlayAnimation('bg', 'orange', true)
		end
	else
		if curBeat % 4 == 0 then
			objectPlayAnimation('bg', 'blue', true)
		end
	end
end

function onBeatHit()
	if curBeat % 2 == 0 then	
		objectPlayAnimation('floor', 'bruh', true)
	end
end