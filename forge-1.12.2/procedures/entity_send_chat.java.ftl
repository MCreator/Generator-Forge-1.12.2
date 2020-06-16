if(${input$entity} instanceof EntityPlayer&&!world.isRemote){
	((EntityPlayer)${input$entity}).sendStatusMessage(new TextComponentString(${input$text}), ${input$actbar});
}
