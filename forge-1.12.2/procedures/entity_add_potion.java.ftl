if(${input$entity} instanceof EntityLivingBase)
	((EntityLivingBase)${input$entity}).addPotionEffect(new PotionEffect(${generator.map(field$potion, "potions")},(int) ${input$duration},(int) ${input$level}));
