toolbuilder
createInputFieldSpecWith: aToolBuilder
	
	^  aToolBuilder pluggableInputFieldSpec new
		model: self;
		frame: (0 @ 0 corner: 1 @ 0.5);
		getText: #currentName;
		editText: #currentName:;
		setText: #currentName:;
		indicateUnacceptedChanges: false;
		help: 'NPC name';
		yourself