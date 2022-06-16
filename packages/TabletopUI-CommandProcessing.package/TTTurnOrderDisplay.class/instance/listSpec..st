toolbuilder
listSpec: aToolBuilder
	
	^ aToolBuilder pluggableListSpec new
		model: self fightContext;
		name: 'Turn Order';
		list: #fightingPlayersNames;
		getSelected: #currentPlayerName;
		yourself