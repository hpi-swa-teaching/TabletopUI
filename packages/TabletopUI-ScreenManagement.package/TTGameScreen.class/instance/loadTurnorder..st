turnorder
loadTurnorder: aDictionary

	| context |
	context := (aDictionary at: #parser) at: #context.
	(context at: #gameState) = #fight
		ifTrue: [self initializeFightorderDisplay: context]
		ifFalse: [self initializePlayerDisplay]