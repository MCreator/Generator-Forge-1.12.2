if(${input$entity} instanceof EntityPlayer) {
    ((EntityPlayer)${input$entity}).capabilities.isFlying = ${input$condition};
    ((EntityPlayer)${input$entity}).sendPlayerAbilities();
}
