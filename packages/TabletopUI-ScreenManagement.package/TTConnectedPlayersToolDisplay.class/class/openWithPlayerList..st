initialize
openWithPlayerList: aPlayerList

	| morph model |
	model := (self newWith: aPlayerList).
	morph := (ToolBuilder open: model).
	morph setProperty: #morphicLayerNumber toValue: 1.
	model morph: morph.
	^ morph