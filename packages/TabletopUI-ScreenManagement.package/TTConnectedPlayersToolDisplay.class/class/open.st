initialize
open

	| morph model |
	model := self new.
	model aboutToBeClosed: false.
	morph := (ToolBuilder open: model).
	morph setProperty: #morphicLayerNumber toValue: 1.
	model morph: morph.
	^ morph