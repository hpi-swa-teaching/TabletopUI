toolbuilder
createNameInputFieldSpecWith: aNumber
	
	^  PluggableInputFieldSpec new
		model: (self players at: aNumber);
		editText: #changeName:;
		setText: #changeName:;
		indicateUnacceptedChanges: false;
		help: 'Enter player', aNumber asString, 's name here.'