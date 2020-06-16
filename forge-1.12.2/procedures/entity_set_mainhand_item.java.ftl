<#include "mcitems.ftl">
if(${input$entity} instanceof EntityLivingBase) {
	ItemStack _setstack = ${mappedMCItemToItemStackCode(input$item, 1)};
	_setstack.setCount(${input$amount});
	((EntityLivingBase)${input$entity}).setHeldItem(EnumHand.MAIN_HAND, _setstack);
	if(${input$entity} instanceof EntityPlayerMP)
		((EntityPlayerMP)${input$entity}).inventory.markDirty();
}
