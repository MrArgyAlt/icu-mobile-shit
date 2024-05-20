function onCreatePost()
  luaDebugMode = true
  runHaxeCode([[
    game.initLuaShader('Bloom');
    var shaderVarName = game.createRuntimeShader('Bloom');
    shaderVarName.setFloat('blurSize', 5);
    var boobies = new ShaderFilter(shaderVarName);
    game.camGame.setFilters([boobies]);
    var resetCamCache = function(?spr) {
      if (spr == null || spr.filters == null) return;
      spr.__cacheBitmap = null;
      spr.__cacheBitmapData3 = spr.__cacheBitmapData2 = spr.__cacheBitmapData = null;
      spr.__cacheBitmapColorTransform = null;
    }  
    fixShaderCoordFix = function(?_) {
      resetCamCache(game.camGame.flashSprite);
      resetCamCache(game.camOther.flashSprite);
    }
    FlxG.signals.gameResized.add(fixShaderCoordFix);
    fixShaderCoordFix();  
  ]]);
end

function onDestroy()
  runHaxeCode('FlxG.signals.gameResized.remove(fixShaderCoordFix);');
end