toolbuilder
createInputFieldSpecWith: aToolBuilder
	
	^  aToolBuilder pluggableInputFieldSpec new
		model: self;
		editText: #countText:;
		getText: #countText;
		indicateUnacceptedChanges: false;
		help: 'Enter player count here';
		yourself