if(${input$entity} instanceof EntityPlayer && !${input$entity}.world.isRemote) {
	((EntityPlayer)${input$entity}).sendStatusMessage(new TextComponentString(${input$text}), ${input$actbar});
}
