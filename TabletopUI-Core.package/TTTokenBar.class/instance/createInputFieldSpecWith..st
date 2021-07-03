toolbuilder
createInputFieldSpecWith: aToolBuilder
	
	^  aToolBuilder pluggableInputFieldSpec new
		model: self;
		frame: (0 @ 0 corner: 1 @ 0.5);
		getText: #resetInputField;
		editText: #changeCurrentName:;
		setText: #changeCurrentName:;
		indicateUnacceptedChanges: false;
		help: 'name';
		yourself