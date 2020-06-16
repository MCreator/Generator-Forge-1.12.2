if(${input$entity} instanceof EntityPlayer) {
    ((EntityPlayer)${input$entity}).capabilities.allowFlying = ${input$condition};
    ((EntityPlayer)${input$entity}).sendPlayerAbilities();
}
