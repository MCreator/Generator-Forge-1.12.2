<#include "mcitems.ftl">
if(${input$entity} instanceof EntityPlayer) {
	ItemStack _setstack = ${mappedMCItemToItemStackCode(input$item, 1)};
	_setstack.setCount(${input$amount});
	ItemHandlerHelper.giveItemToPlayer(((EntityPlayer)${input$entity}), _setstack);
}
