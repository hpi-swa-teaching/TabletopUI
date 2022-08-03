as yet unclassified
openWith: aMap and: anInputField

	| model |
	model := (self newWithMap: aMap inputField: anInputField).
	model morph: (ToolBuilder open: model).
	model morph setProperty: #morphicLayerNumber toValue: 1.
	^ model