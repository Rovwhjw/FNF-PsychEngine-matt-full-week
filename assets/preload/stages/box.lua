function onCreate()
	makeLuaSprite('bg1', 'boxingnight1', -800, -490)
	setScrollFactor('bg1', 0.8, 0.8)
 	makeLuaSprite('bg2', 'boxingnight2', -800, -490)
	setScrollFactor('bg2', 0.9, 0.9)
 	makeLuaSprite('bg3', 'boxingnight3', -800, -490)

	addLuaSprite('bg1', false)
	addLuaSprite('bg2', false)
	addLuaSprite('bg3', false)
end