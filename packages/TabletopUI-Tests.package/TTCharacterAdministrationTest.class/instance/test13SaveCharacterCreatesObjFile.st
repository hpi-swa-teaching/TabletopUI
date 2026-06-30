testing
test13SaveCharacterCreatesObjFile

	| player fileName |
	player := self characterAdministration players first.
	fileName := player name, '.obj'.
	[ TTCharacterAdministration saveCharacter: player.
	  self assert: (FileDirectory default fileExists: fileName) ]
		ensure: [
			(FileDirectory default fileExists: fileName) 
				ifTrue: [ FileDirectory default deleteFileNamed: fileName ] ].