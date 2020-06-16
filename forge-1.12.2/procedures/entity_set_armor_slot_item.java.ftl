<#include "mcitems.ftl">
if(${input$entity} instanceof EntityPlayer) {
	((EntityPlayer)${input$entity}).inventory.armorInventory.set(${input$slotid}, ${mappedMCItemToItemStackCode(input$item, 1)});
	if(${input$entity} instanceof EntityPlayerMP)
		((EntityPlayerMP)${input$entity}).inventory.markDirty();
}

/*@ItemStack*/
