toolbuilder
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableInputFieldSpec new
		model: self;
		setText: #processInput:;
		getText: #resetInputField;
		indicateUnacceptedChanges: false;
		help: 'Enter command';
		yourself