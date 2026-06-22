setup
enterFightOn: aSessionManager

	| players |
	players := aSessionManager window characterAdministration players asOrderedCollection.
	(self parserOf: aSessionManager) changeToFightContextWithFightOrder: players