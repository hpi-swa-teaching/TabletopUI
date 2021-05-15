toolbuilder
createInputFieldSpecWith: aToolBuilder
	
	^  aToolBuilder pluggableInputFieldSpec new
		model: self;
		setText: #countText:;
		getText: #countText;
		indicateUnacceptedChanges: false;
		help: 'Enter player count here'