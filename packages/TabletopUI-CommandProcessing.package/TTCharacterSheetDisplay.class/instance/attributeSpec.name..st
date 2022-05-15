as yet unclassified
attributeSpec: aToolBuilder name: aString
	^ aToolBuilder pluggablePanelSpec new
		model: self;
		name: aString;
		children: (OrderedCollection new
			add: (aToolBuilder pluggableTextSpec new
				setText: #defaultText;
				frame: (0 @ 0 rect: 1 @ 1);
				readOnly: true;
				yourself);
			 yourself);
		yourself