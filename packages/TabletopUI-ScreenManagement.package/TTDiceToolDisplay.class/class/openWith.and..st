as yet unclassified
openWith: aTTCharacterAdministration and: anInputField

	| morph instance|
	instance := (self newWith: aTTCharacterAdministration and: anInputField).
	morph := ToolBuilder open: instance.
	morph setProperty: #morphicLayerNumber toValue: 1.
	instance morph: morph.
	^ morph