toolbuilder
listSpec: aToolBuilder
	
	^ aToolBuilder pluggableListSpec new
		model: self;
		name: 'Turn Order';
		list: #fightingPlayersNames;
		getSelected: #currentPlayerName;
		yourself