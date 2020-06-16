if(${input$entity} instanceof EntityPlayer) {
    ((EntityPlayer)${input$entity}).capabilities.disableDamage = ${input$condition};
    ((EntityPlayer)${input$entity}).sendPlayerAbilities();
}
