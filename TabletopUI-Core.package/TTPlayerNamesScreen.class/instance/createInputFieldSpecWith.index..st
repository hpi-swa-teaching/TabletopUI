toolbuilder
createInputFieldSpecWith: aToolBuilder index: aNumber
	
	^  aToolBuilder pluggableInputFieldSpec new
		model: (self game players at: aNumber);
		getText: #name;
		editText: #name:;
		indicateUnacceptedChanges: false;
		help: 'Enter player', aNumber asString, 's name here.';
		yourself