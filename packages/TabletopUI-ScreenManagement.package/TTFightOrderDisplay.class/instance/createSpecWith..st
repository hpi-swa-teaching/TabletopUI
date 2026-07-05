toolbuilder
createSpecWith: aToolBuilder

	^ aToolBuilder pluggableListSpec new
		model: self;
		minimumWidth: 0;
		list: #nameList;
		getSelected: #currentPlayer;
		name: 'Fighting Order:';
		yourself