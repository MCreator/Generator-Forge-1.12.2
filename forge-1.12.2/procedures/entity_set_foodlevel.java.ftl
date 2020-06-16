if(${input$entity} instanceof EntityPlayer)
    ((EntityPlayer)${input$entity}).getFoodStats().setFoodLevel((int)${input$foodlevel});
