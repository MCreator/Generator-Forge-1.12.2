<#include "mcitems.ftl">
if(${input$entity} instanceof EntityPlayer)
	((EntityPlayer)${input$entity}).getCooldownTracker().setCooldown((${mappedMCItemToItemStackCode(input$item, 1)}).getItem(), (int) ${input$ticks});
