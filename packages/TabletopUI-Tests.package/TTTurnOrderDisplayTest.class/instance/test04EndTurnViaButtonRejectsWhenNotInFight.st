testing
test04EndTurnViaButtonRejectsWhenNotInFight

	self parser changeToDefaultContext.
	self assert: self parser context gameState equals: #default.
	self display proceedToNextPlayer.
	self assert: self parser context gameState equals: #default