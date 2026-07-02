toolbuilder
readOnlyTextSpec: aToolBuilder getText: aSelector frame: aFrame

	^ aToolBuilder pluggableTextSpec new
		model: self;
		getText: aSelector;
		color: #backgroundColor;
		indicateUnacceptedChanges: false;
		frame: aFrame;
		readOnly: true;
		yourself