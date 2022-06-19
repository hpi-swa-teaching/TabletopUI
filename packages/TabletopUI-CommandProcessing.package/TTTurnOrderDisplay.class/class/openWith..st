toolbuilder
openWith: aTTFightContext

	| morph |
	morph := ToolBuilder open: (self newWith: aTTFightContext).
	morph setProperty: #morphicLayerNumber toValue: 1.
	^ morph