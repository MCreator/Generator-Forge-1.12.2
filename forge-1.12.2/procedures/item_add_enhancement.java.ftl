<#include "mcitems.ftl">
(${mappedMCItemToItemStackCode(input$item, 1)}).addEnchantment(Enchantments.${generator.map(field$enhancement, "enhancements")},(int) ${input$level});
