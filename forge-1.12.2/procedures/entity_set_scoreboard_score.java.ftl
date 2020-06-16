if(${input$entity} instanceof EntityPlayer) {
	Scoreboard _sc = ((EntityPlayer)${input$entity}).getWorldScoreboard();
	ScoreObjective _so = _sc.getObjective(${input$score});
	if (_so == null) {
		_so = _sc.addScoreObjective(${input$score}, ScoreCriteria.DUMMY);
	}
	Score _scr = _sc.getOrCreateScore(((EntityPlayer)${input$entity}).getGameProfile().getName(), _so);
	_scr.setScorePoints((int)${input$value});
}
