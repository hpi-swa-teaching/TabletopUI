as yet unclassified
attributeSpec: aToolBuilder name: aString
	
	^aToolBuilder pluggablePanelSpec new
		model: model;
		name: aString;
		children: (OrderedCollection new
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: #defaultStrengthText;
				frame: (0 @ 0 rect: 1 @ 0.2);
				readOnly: true;
				yourself);
				
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: #strengthModifier;
				font: (TextStyle defaultFont pointSize: 24; yourself);
				frame: (0.1 @ 0.2 rect: 0.9 @ 0.8);
				readOnly: true;
				yourself);
				
			add: (aToolBuilder pluggableInputFieldSpec new
				model: model;
				setText: #processInputStrength:;
				getText: #strength;
				frame: (0.25 @ 0.6 rect: 0.75 @ 0.9);
				readOnly: false;
				yourself);
			 yourself);
		yourself