primitives
addField: aSymbol sized: anExtent at: aPoint in: anImageMorph

	"editable fields get a size matching their container"
	| textMorph |
	textMorph := PluggableTextMorph
		on: self model
		text: aSymbol
		accept: (aSymbol , ':') asSymbol.
	textMorph
		color: Color transparent;
		borderWidth: 0;
		font: (StrikeFont familyName: 'BitstreamVeraSans' pointSize: 20);
		extent: anExtent;
		wrapFlag: false.
 	anImageMorph addMorph: textMorph.
	textMorph position: aPoint