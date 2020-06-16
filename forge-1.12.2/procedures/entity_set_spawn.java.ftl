if(${input$entity} instanceof EntityPlayer)
	((EntityPlayer)${input$entity}).setSpawnPoint(new BlockPos((int)${input$x},(int)${input$y},(int)${input$z}), true);
