toolbuilder
createNameInputFieldSpecWith: aNumber
	
	^  PluggableInputFieldSpec new
		model: (self playerNames at: aNumber);
		setText: #nameText:;
		indicateUnacceptedChanges: false;
		help: 'Enter player', aNumber asString, 's name here'