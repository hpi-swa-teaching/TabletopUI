toolbuilder
buildInputFieldSpec
	
	^  PluggableInputFieldSpec new
		model: self;
		setText: #countText:;
		getText: #countText;
		indicateUnacceptedChanges: false;
		help: 'Enter player count here'