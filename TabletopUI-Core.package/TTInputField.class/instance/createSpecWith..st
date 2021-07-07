toolbuilder
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableInputFieldSpec new
		model: self;
		minimumWidth: 0;
		setText: #processInput:;
		getText: #resetInputField;
		indicateUnacceptedChanges: false;
		help: 'Enter command';
		yourself