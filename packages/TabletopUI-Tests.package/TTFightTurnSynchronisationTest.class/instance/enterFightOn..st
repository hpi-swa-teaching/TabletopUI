setup
enterFightOn: aSessionManager

	| players |
	players := aSessionManager window characterAdministration players reject: [:p | p isGamemaster].
	(self parserOf: aSessionManager) changeToFightContextWithFightOrder: players asOrderedCollection