testing
test06SaveCharacterCreatesFileForSelectedPlayer

	| player fileName |
	self playerSelectionMenu selectedIndex: 2.
	player := self playerSelectionMenu characterAdministration players second.
	player sheet initializeWith: #default.
	fileName := player name, '.obj'.
	[ self playerSelectionMenu saveCharacter.
	  self assert: (FileDirectory default fileExists: fileName) ] 
		ensure: [ 
			(FileDirectory default fileExists: fileName) 
				ifTrue: [ FileDirectory default deleteFileNamed: fileName ] ].