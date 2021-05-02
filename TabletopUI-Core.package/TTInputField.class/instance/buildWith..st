toolbuilder
buildWith: builder
	
	^ builder pluggableInputFieldSpec new
		model: self;
		setText: #processInput:;
		getText: #resetInputField;
		indicateUnacceptedChanges: false;
		help: 'Enter command here'