selecting preset
createSheets

	(self characterAdministration players) withIndexDo: [ :player :index |
		('gamemaster' = (self characterSheets at: index))
			ifFalse: [((self characterSheets at: index) endsWith: '.obj')
				ifTrue: [Transcript show: 'load character from file', (self characterSheets at: index); cr. player sheet initializeWith: #default]
				ifFalse: [Transcript show: 'create sheet', (self characterSheets at: index); cr. player sheet initializeWith: ((self characterSheets at: index) asSymbol)]]
		]
