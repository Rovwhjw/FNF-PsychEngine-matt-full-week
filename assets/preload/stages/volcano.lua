function onCreate()
    setProperty('introSoundsSuffix', '-4')
    makeAnimatedLuaSprite('volcano', 'volcano/volcano', -1280, -760)
    addAnimationByPrefix('volcano', 'volca', 'BUBBLE ', 24, true)
    objectPlayAnimation('volcano', 'volca', true)
    addLuaSprite('volcano', false)
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'wiik4-gameOver')
end

function onCountdownTick(hell)
    if hell == 1 then
        loadGraphic('countdownReady', 'volcano/ready-4')
    elseif hell == 2 then
        loadGraphic('countdownSet', 'volcano/set-4')
    elseif hell == 3 then
        loadGraphic('countdownGo', 'volcano/go-4')
    end
end

function onBeatHit()
    if curBeat == 0 then
        triggerEvent('Change Note Skin', 'wiik4_notes', 'false')
    end
end