as yet unclassified
characterAdministration: aCharacterAdministration

	super characterAdministration: aCharacterAdministration.

	(self characterAdministration players) withIndexDo: [ :player :index |
		self tokenList at: index put: 'default']