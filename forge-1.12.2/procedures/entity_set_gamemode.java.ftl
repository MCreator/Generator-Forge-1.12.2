if(${input$entity} instanceof EntityPlayer)
	((EntityPlayer)${input$entity}).setGameType(GameType.${generator.map(field$gamemode, "gamemodes")});
