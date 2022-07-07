as yet unclassified
newWith: aCharacterAdministration and: anInputField map: aMap

	| toolBar |
	
	toolBar := self new
		characterAdministration: aCharacterAdministration;
		inputField: anInputField;
		map: aMap;
		yourself.
	^ toolBar.