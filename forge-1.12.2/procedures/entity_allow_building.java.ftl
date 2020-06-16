if(${input$entity} instanceof EntityPlayer) {
    ((EntityPlayer)${input$entity}).capabilities.allowEdit = ${input$condition};
    ((EntityPlayer)${input$entity}).sendPlayerAbilities();
}
