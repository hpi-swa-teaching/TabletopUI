primitives
addField: aSymbol sized: anExtent at: aPoint in: anImageMorph

	"editable fields get a size matching their container"
	| textMorph |
	textMorph := PluggableTextMorph
		on: self model
		text: aSymbol
		accept: (aSymbol , ':') asSymbol.
	textMorph
		extent: anExtent;
		wrapFlag: false.
	self
		textSettingsFor: textMorph;
		add: textMorph ToUI: anImageMorph.
	textMorph position: aPoint