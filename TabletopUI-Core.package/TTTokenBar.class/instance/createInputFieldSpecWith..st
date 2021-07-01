toolbuilder
createInputFieldSpecWith: aToolBuilder
	
	^  aToolBuilder pluggableInputFieldSpec new
		model: self;
		frame: (0 @ 0 corner: 1 @ 0.5);
		setText: #changeName:;
		indicateUnacceptedChanges: false;
		help: 'name';
		yourself