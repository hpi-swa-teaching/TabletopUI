state
loadState: aDictionary

	| state |
	state := (aDictionary at: TTGameStateKeys keyGameState) asSymbol.
	
	state = #default ifTrue: [
		self changeToContext: (TTDefaultContext new
			parser: self;
			yourself)].
	state = #fight ifTrue: [self fightLoadState: aDictionary].
	state = #initiative ifTrue: [self initiativeLoadState: aDictionary]