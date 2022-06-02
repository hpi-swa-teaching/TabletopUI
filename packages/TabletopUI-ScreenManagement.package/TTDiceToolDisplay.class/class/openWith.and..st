as yet unclassified
openWith: aTTCharacterAdministration and: anInputField

	| morph |
	morph := ToolBuilder open: (self newWith: aTTCharacterAdministration and: anInputField).
	morph setProperty: #morphicLayerNumber toValue: 1.
	^ morph