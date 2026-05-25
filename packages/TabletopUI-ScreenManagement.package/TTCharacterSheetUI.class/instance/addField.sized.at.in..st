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
	self textSettingsFor: textMorph.
	self model addDependent: textMorph.
 	anImageMorph addMorph: textMorph.
	textMorph position: aPoint