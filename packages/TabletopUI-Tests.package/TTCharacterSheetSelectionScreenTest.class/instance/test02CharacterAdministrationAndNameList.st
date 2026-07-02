testing
test02CharacterAdministrationAndNameList

	self assert: (self screen characterSheets at: 1) equals: 'default'.
	self assert: (self screen characterSheets at: 2) equals: 'gamemaster'.
	self assert: self screen nameList equals: {'[ default ] playerA'. '[ gamemaster ] playerB'} asOrderedCollection