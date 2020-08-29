<#if field$dimension??><#--Here for legacy reasons as field$dimension does not exist in older workspaces-->
{
	Entity _ent = ${input$entity};
	if(!_ent.world.isRemote&&!_ent.isRiding()&&!_ent.isBeingRidden()
			&&_ent instanceof EntityPlayerMP) {
		<#if field$dimension=="Surface">
			int dimensionID = 0;
		<#elseif field$dimension=="Nether">
			int dimensionID = -1;
		<#elseif field$dimension=="End">
			int dimensionID = 1;
		<#else>
			int dimensionID = World${(field$dimension.toString().replace("CUSTOM:", ""))}.DIMID;
		</#if>
	
		class TeleporterDirect extends Teleporter {
	
			public TeleporterDirect(WorldServer worldserver) {
				super(worldserver);
			}
	
			@Override public void placeInPortal(Entity entity, float yawrotation) {
			}
	
			@Override public boolean placeInExistingPortal(Entity entity, float yawrotation) {
				return true;
			}
	
			@Override public boolean makePortal(Entity entity) {
				return true;
			}
		}
			EntityPlayerMP _player = (EntityPlayerMP) _ent;
		_player.mcServer.getPlayerList()
				.transferPlayerToDimension(_player,dimensionID,new TeleporterDirect(_player.getServerWorld()));
				_player.connection.setPlayerLocation(
				DimensionManager.getWorld(dimensionID).getSpawnPoint().getX(),
				DimensionManager.getWorld(dimensionID).getSpawnPoint().getY()+1,
				DimensionManager.getWorld(dimensionID).getSpawnPoint().getZ(),
				_player.rotationYaw,_player.rotationPitch);
	}
}
</#if>
