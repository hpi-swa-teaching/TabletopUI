toolbuilder
openWith: aTTFightContext

	| morph instance |

	instance := (self newWith: aTTFightContext).
	morph := ToolBuilder open: instance.
	morph setProperty: #morphicLayerNumber toValue: 1.
	instance morph: morph.
	^ morph