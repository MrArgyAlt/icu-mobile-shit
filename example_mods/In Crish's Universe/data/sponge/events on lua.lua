function onCreate()

     makeLuaSprite('bloom')
    if shadersEnabled then
        runHaxeCode([[
            var shaderName = "bloom";

            game.initLuaShader(shaderName);

            var shader0 = game.createRuntimeShader(shaderName);
            game.camGame.setFilters([new ShaderFilter(shader0)]);
            game.getLuaObject("bloom").shader = shader0;


        ]])
    end
    setShaderFloatArray('Bloom', 'u_samples', {0, 0});
    setShaderFloatArray('Bloom', 'u_size', {0, 0});
    setShaderFloatArray('Bloom', 'u_tint', {0, 0, 0});
    setShaderFloat('Bloom', 'u_brightness', 0); 
    setShaderFloat('Bloom', 'u_range', 0);
    setShaderFloat('Bloom', 'u_threshold', 0);
end
function onUpdate()
if curBeat == 100 then
    setShaderFloatArray('Bloom', 'u_samples', {24, 24});
    setShaderFloatArray('Bloom', 'u_size', {200, 200});
    setShaderFloatArray('Bloom', 'u_tint', {2, 2, 2});
    setShaderFloat('Bloom', 'u_brightness', 0.80); 
    setShaderFloat('Bloom', 'u_range', 3);
    setShaderFloat('Bloom', 'u_threshold', 1);
end
if curBeat == 135 then
  setShaderFloatArray('Bloom', 'u_samples', {0, 0});
    setShaderFloatArray('Bloom', 'u_size', {0, 0});
    setShaderFloatArray('Bloom', 'u_tint', {0, 0, 0});
    setShaderFloat('Bloom', 'u_brightness', 0); 
    setShaderFloat('Bloom', 'u_range', 0);
    setShaderFloat('Bloom', 'u_threshold', 0);
  end
end
