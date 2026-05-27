primitives
addField: aSymbol at: aPoint in: anImageMorph

	"non-editable fields don't need to be sized"
	| textMorph |
	textMorph := PluggableTextMorph
		on: self model
		text: aSymbol
		accept: nil.
	textMorph lock.
	self
		textSettingsFor: textMorph;
		add: textMorph ToUI: anImageMorph.
	textMorph position: aPoint.