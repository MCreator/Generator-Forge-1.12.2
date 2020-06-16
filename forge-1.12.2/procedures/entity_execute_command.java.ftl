{
	Entity _ent = ${input$entity};
	if(!_ent.world.isRemote && _ent.world.getMinecraftServer() != null) {
			_ent.world.getMinecraftServer().getCommandManager().executeCommand(new ICommandSender() {
	
			@Override public String getName() {
				return "";
			}
	
			@Override public boolean canUseCommand(int permission, String command) {
				return true;
			}
	
			@Override public World getEntityWorld() {
				return _ent.world;
			}
	
			@Override public MinecraftServer getServer() {
				return _ent.world.getMinecraftServer();
			}
	
			@Override public boolean sendCommandFeedback() {
				return false;
			}
	
			@Override public BlockPos getPosition(){
				return _ent.getPosition();
			}
	
			@Override public Vec3d getPositionVector() {
				return new Vec3d(_ent.posX, _ent.posY, _ent.posZ);
			}
	
			@Override public Entity getCommandSenderEntity() {
				return _ent;
			}

		}, ${input$command});
	}
}