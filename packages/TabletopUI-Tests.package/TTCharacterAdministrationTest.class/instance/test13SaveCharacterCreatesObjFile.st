testing
test13SaveCharacterCreatesObjFile

	| player fileName |
	player := self characterAdministration players first.
	fileName := player name, '.obj'.
	[ self characterAdministration saveCharacter: 1.
	  self assert: (FileDirectory default fileExists: fileName) ]
		ensure: [
			(FileDirectory default fileExists: fileName) 
				ifTrue: [ FileDirectory default deleteFileNamed: fileName ] ].