selecting preset
createSheets

	| file stream |
	
	(self characterAdministration players) withIndexDo: [ :player :index |
		('gamemaster' = (self characterSheets at: index))
			ifFalse: [((self characterSheets at: index) endsWith: '.obj')
				ifTrue: [file := (FileStream readOnlyFileNamed: ((self characterSheets at: index) asString)) binary.
					stream := ReferenceStream on: file.
					player sheet: stream next.
					stream close]
				ifFalse: [player sheet initializeWithPreset: ((self characterSheets at: index) asSymbol)]]
		]
