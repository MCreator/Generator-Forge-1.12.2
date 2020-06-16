(((${input$entity} instanceof EntityPlayerMP)&&((${input$entity}).world instanceof WorldServer))?((EntityPlayerMP)${input$entity}).getAdvancements()
        .getProgress(((WorldServer)(${input$entity}).world).getAdvancementManager().getAdvancement(new ResourceLocation("${generator.map(field$achievement, "achievements")}"))).isDone():false)
