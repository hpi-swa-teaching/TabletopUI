primitives
textSettingsFor: aPluggableTextMorph

	aPluggableTextMorph
		color: Color transparent;
		borderWidth: 0;
		font: (StrikeFont familyName: 'BitstreamVeraSans' pointSize: self fieldFontSize);
		wrapFlag: false;
		setTextColor: Color black;
		vScrollBarPolicy: #never;
		hScrollBarPolicy: #never.
		
	aPluggableTextMorph textMorph
		margins: (aPluggableTextMorph class textMargins scaleBy: (1 / Display uiScaleFactor))