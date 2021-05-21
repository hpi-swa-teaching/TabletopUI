toolbuilder
createNameInputFieldSpecWith: aNumber
	
	^  PluggableInputFieldSpec new
		model: (self players at: aNumber);
		editText: #changeName:;
		indicateUnacceptedChanges: false;
		help: 'Enter player', aNumber asString, 's name here.'