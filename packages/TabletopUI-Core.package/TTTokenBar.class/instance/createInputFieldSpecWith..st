toolbuilder
createInputFieldSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableInputFieldSpec new
		model: self;
		frame: (0 @ 0.5 corner: 1 @ 1);
		getText: #currentName;
		editText: #currentName:;
		setText: #currentName:;
		indicateUnacceptedChanges: false;
		help: 'NPC name';
		yourself