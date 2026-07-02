accessing
characterAdministration: aCharacterAdministration

	super characterAdministration: aCharacterAdministration.

	self characterAdministration players withIndexDo: [:player :index |
		self tokenList at: index put: (player isGamemaster
			ifTrue: [TTCharacter gamemasterTokenName]
			ifFalse: [TTCharacter defaultTokenName])]