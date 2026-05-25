primitives
addField: aSymbol at: aPoint in: anImageMorph

	"non-editable fields don't need to be sized"
	| textMorph |
	textMorph := PluggableTextMorph
		on: self model
		text: aSymbol
		accept: nil.
	textMorph lock.
	self textSettingsFor: textMorph.
	self model addDependent: textMorph.
 	anImageMorph addMorph: textMorph.
	textMorph position: aPoint.