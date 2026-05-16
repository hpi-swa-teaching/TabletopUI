primitives
addField: aSymbol editable: aBoolean at: aPoint in: anImageMorph

	| textMorph |
	textMorph := PluggableTextMorph
		on: self model
		text: aSymbol
		accept: (aBoolean ifTrue: [(aSymbol , ':') asSymbol] ifFalse: [nil]).
	textMorph
		color: Color transparent;
		borderWidth: 0;
		font: (StrikeFont familyName: 'BitstreamVeraSans' pointSize: 20);
		extent: 150 @ 40;
		wrapFlag: false.
	aBoolean ifFalse: [textMorph lock].
 	anImageMorph addMorph: textMorph.
	textMorph position: aPoint