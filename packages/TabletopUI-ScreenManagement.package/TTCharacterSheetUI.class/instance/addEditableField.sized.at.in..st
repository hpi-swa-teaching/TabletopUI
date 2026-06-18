primitives
addEditableField: aSymbol sized: anExtent at: aPoint in: anImageMorph

	"editable fields get a size matching their container"
	| textMorph |
	textMorph := PluggableTextMorph
		on: self model
		text: aSymbol
		accept: (aSymbol , ':') asSymbol.
	textMorph extent: anExtent.
	self finalize: textMorph at: aPoint in: anImageMorph