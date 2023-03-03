function onCreate()
	if isStoryMode then
		if week == 'wiik5' then
			addLuaScript('scriscript/Dialogue4')
		else
			addLuaScript('scriscript/Dialogue1')
		end
	end
end