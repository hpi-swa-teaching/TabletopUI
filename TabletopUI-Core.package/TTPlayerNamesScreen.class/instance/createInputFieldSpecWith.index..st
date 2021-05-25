toolbuilder
createInputFieldSpecWith: aToolBuilder index: aNumber
	
	^  aToolBuilder pluggableInputFieldSpec new
		model: (self players at: aNumber);
		editText: #changeName:;
		setText: #changeName:;
		indicateUnacceptedChanges: false;
		help: 'Enter player', aNumber asString, 's name here.'