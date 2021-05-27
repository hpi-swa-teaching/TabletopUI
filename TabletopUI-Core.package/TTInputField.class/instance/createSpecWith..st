toolbuilder
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableInputFieldSpec new
		model: self;
		setText: #processInput:;
		getText: #resetInputField;
		indicateUnacceptedChanges: false;
		help: 'Choose a player and enter your command here';
		yourself