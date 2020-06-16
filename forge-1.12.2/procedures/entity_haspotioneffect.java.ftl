(new Object(){boolean check(){
		if(${input$entity} instanceof EntityLivingBase){
			Collection<PotionEffect> effects=((EntityLivingBase)${input$entity}).getActivePotionEffects();
			for(PotionEffect effect:effects){
				if(effect.getPotion()== ${generator.map(field$potion, "potions")})
					return true;
			}
		}
		return false;
}}.check())
