<#include "mcitems.ftl">
((${input$entity} instanceof EntityPlayer)?((EntityPlayer)${input$entity}).inventory.hasItemStack(${mappedMCItemToItemStackCode(input$item, 1)}):false)
