initialize-release
loadState: aDictionary

	| state contextDict |
	contextDict := aDictionary at: TTGameStateKeys keyContext.
	state := (contextDict at: TTGameStateKeys keyGameState) asSymbol.
	
	state = #default ifTrue: [
		self applyContextWithoutNotifying: (TTDefaultContext new
			parser: self;
			yourself)].
	(state = #fight and: self context gameState ~= #fight) ifTrue: [self fightLoadState: contextDict].
	state = #initiative ifTrue: [self initiativeLoadState: contextDict]