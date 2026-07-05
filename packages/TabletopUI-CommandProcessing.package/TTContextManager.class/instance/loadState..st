initialize-release
loadState: aDictionary

	| gameState |
	gameState := (aDictionary at: TTGameStateKeys keyGameState) asSymbol.
	
	gameState = #default ifTrue: [
		self changeToContext: (TTDefaultContext new
			manager: self;
			yourself)].
	gameState = #fight ifTrue: [self fightLoadState: aDictionary].
	gameState = #initiative ifTrue: [self initiativeLoadState: aDictionary]