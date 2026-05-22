tasks
saveCharacterSheet

	(UIManager default confirm: 'Do you want to save the character sheet?')
		ifTrue: [ self characterAdministration playerSelectionMenu saveCharacter]