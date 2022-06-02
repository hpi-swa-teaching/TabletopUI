toolbuilder
openWith: aTTFightEvaluator

	| morph |
	morph := ToolBuilder open: (self newWith: aTTFightEvaluator).
	morph setProperty: #morphicLayerNumber toValue: 1.
	^ morph