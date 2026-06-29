helpers
enterFightWithFirstPlayerNamed: aName on: aSessionManager

	| players first rest |
	players := aSessionManager window characterAdministration players reject: [:p | p isGamemaster].
	first := players detect: [:p | p name = aName].
	rest := (players reject: [:p | p name = aName]) asOrderedCollection.
	(self parserOf: aSessionManager) contextManager changeToFightContextWithFightOrder: {first}, rest