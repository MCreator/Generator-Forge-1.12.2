if(${input$entity} instanceof EntityPlayer)
    ((EntityPlayer)${input$entity}).addExperienceLevel(-((int)${input$xpamount}));
