accessing
characterAdministration: aCharacterAdministration

	super characterAdministration: aCharacterAdministration.

	(self characterAdministration players) withIndexDo: [ :player :index |
		self characterSheets at: index put: (player isGamemaster 
			ifTrue: ['Gamemaster'] ifFalse: ['default'])]