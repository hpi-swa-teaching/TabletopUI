primitives
addField: aSymbol at: aPoint in: anImageMorph

	"non-editable fields don't need to be sized"
	| textMorph |
	textMorph := PluggableTextMorph
		on: self model
		text: aSymbol
		accept: nil.
	textMorph
		color: Color transparent;
		borderWidth: 0;
		font: (StrikeFont familyName: 'BitstreamVeraSans' pointSize: 20);
		extent: 150 @ 40;
		wrapFlag: false;
		lock.
	self model addDependent: textMorph.
 	anImageMorph addMorph: textMorph.
	textMorph position: aPoint.