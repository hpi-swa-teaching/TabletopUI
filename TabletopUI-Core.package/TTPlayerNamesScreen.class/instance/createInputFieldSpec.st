toolbuilder
createInputFieldSpec
	"currently not used"
	^  PluggableInputFieldSpec new
		model: self;
		setText: #addPlayerName;
		indicateUnacceptedChanges: false;
		help: 'Enter player name here'