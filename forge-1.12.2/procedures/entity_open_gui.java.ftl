if(${input$entity} instanceof EntityPlayer)
    ((EntityPlayer)${input$entity}).openGui(${JavaModName}.instance, Gui${(field$guiname)}.GUIID,world,x,y,z);
