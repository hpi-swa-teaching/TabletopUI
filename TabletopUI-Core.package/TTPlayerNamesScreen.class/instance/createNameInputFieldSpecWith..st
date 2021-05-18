toolbuilder
createNameInputFieldSpecWith: aNumber
	
	^  TTPluggableNameInputFieldSpec new
		model: self;
		setText: #addPlayerName:;
		indicateUnacceptedChanges: false;
		help: 'Enter player', aNumber asString, 's name here';
		index: aNumber