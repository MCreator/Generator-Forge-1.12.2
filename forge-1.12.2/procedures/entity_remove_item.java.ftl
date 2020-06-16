<#include "mcitems.ftl">
if(${input$entity} instanceof EntityPlayer)
	((EntityPlayer)${input$entity}).inventory
        .clearMatchingItems(${mappedMCItemToItem(input$item)}, ${getMappedMCItemMetadata(input$item)},(int)${input$amount},null);
