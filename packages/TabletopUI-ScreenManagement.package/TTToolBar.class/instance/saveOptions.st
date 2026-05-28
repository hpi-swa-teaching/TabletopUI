tasks
saveOptions

	| choice |
	choice := UIManager default 
		confirm: 'Which saving option do you want to use?'
		trueChoice: 'Save Character Sheet'
		falseChoice: 'Save Character Token'.

	choice ifNil: [ ^ self ]. 

	choice 
		ifTrue: [ self characterAdministration playerSelectionMenu saveCharacter ]
		ifFalse: [ self characterAdministration playerSelectionMenu saveToken ].
