as yet unclassified
attributeSpec: aToolBuilder name: aString
	^ aToolBuilder pluggablePanelSpec new
		model: model;
		name: aString;
		children: (OrderedCollection new
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: #defaultText;
				frame: (0 @ 0 rect: 1 @ 0.2);
				readOnly: true;
				yourself);
				
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: #defaultText;
				font: (TextStyle defaultFont pointSize: 24; yourself);
				textColor: #blue;
				frame: (0.1 @ 0.2 rect: 0.9 @ 0.8);
				readOnly: true;
				yourself);
				
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: #defaultText;
				frame: (0.25 @ 0.6 rect: 0.75 @ 0.9);
				readOnly: true;
				yourself);
			 yourself);
		yourself