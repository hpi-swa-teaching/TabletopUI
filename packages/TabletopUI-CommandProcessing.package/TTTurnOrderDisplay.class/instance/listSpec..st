toolbuilder
listSpec: aToolBuilder
	
	^ aToolBuilder pluggableListSpec new
		model: self fightEvaluator;
		name: 'Turn Order';
		list: #fightingPlayersNames;
		getSelected: #currentPlayerName;
		yourself