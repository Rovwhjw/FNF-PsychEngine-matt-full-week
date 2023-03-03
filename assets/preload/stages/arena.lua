function onCreate()
	makeLuaSprite('bg', 'arena-bg', -600, -300)
 	makeLuaSprite('rail', 'railing', -600, 220)

	makeAnimatedLuaSprite('crew', 'arena-characters',  -600, 40)
	addAnimationByPrefix('crew', 'cheer', 'bg-characters', 24, true)

	addLuaSprite('bg', false)
	addLuaSprite('crew', false)
	addLuaSprite('rail', false)
end

function onBeatHit()
	objectPlayAnimation('crew', 'cheer', true)
end