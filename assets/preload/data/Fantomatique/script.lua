function onCreatePost()
    setPropertyFromClass("openfl.Lib", "application.window.title", "FANTOMATIQUE ~ VISION OF THE UNSEEN");

    initLuaShader('Glitch')
    makeLuaSprite('shaderImage')
    makeGraphic('shaderImage', screenWidth, screenHeight)
    
    setSpriteShader('shaderImage', 'glitch')
    addHaxeLibrary("ShaderFilter", "openfl.filters")
    runHaxeCode([[
        trace(ShaderFilter);
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject("shaderImage").shader)]);
        game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("shaderImage").shader)]);
    ]])
end

function onUpdate(elapsed)
    setShaderFloat("shaderImage", "iTime", os.clock())
    songPos = getSongPosition()
    local currentBeat = (songPos/3000)*(curBpm/60)

    doTweenY(dadTweenY, 'dad', 300-110*math.sin((currentBeat*0.25)*math.pi),0.001)

     -- if curStep >= 768 and curStep <= 1264 then 
     if curStep >= 768 then
        local shitStuffX = ((screenWidth - 675) - (20 / 2)) + (math.sin((currentBeat * 3) + 0) * 350)
        local shitStuffY = ((screenHeight / 2.5) - (20 / 2)) + (math.cos((currentBeat * 3) + 0) * 50)

        local variable = 0
        
        for i = 0,3 do
            variable = variable + 1.5
            setPropertyFromGroup('strumLineNotes',i,'alpha',0.15)
            setPropertyFromGroup('strumLineNotes',i,'x',(shitStuffX - (20 / 2)) + (math.sin((currentBeat * 3) + variable * 8) * 250))
            setPropertyFromGroup('strumLineNotes',i,'y',(shitStuffY - (20 / 2)) + (math.sin((currentBeat * 3) + variable) * 250))
        end

        for i = 4,7 do
            --create variable that increments by 1.5 each turn and starts by being 0
            variable = variable + 1.5
            setPropertyFromGroup('strumLineNotes',i,'x',(shitStuffX - (20 / 2)) + (math.sin((currentBeat * 3) + variable * 16) * 100))
            setPropertyFromGroup('strumLineNotes',i,'y',(shitStuffY - (20 / 2)) + (math.sin((currentBeat * 3) + variable) * 100))
        end

        for i = 0,7 do
            --setPropertyFromGroup('playerStrums', 4, 'direction', 200)
            setPropertyFromGroup('strumLineNotes',i,'y', defaultPlayerStrumY0 + 175 - 45*math.sin((currentBeat * 8 + i) * 0.25)*math.pi)
        end
    end
end

function onStepHit()
    if curStep == 127 or curStep == 768 then
        setProperty('defaultCamZoom', 0.7)
    elseif curStep == 512 then
        setProperty('defaultCamZoom', 1.2)
    end
end

