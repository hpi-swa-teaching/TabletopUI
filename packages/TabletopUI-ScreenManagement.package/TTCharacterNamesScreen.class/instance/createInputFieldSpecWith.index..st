toolbuilder
createInputFieldSpecWith: aToolBuilder index: aNumber
	
	^  aToolBuilder pluggableInputFieldSpec new
		model: (self characterAdministration players at: aNumber);
		getText: #name;
		editText: #name:;
		indicateUnacceptedChanges: false;
		help: 'Enter player', aNumber asString, 's Character name here.';
		yourself