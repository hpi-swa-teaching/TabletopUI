toolbuilder
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableInputFieldSpec new
		model: self;
		setText: #processInput:;
		getText: #resetInputField;
		indicateUnacceptedChanges: false;
		help: 'roll xdy+/-z';
		yourself