toolbuilder
buildWith: aToolBuilder

	| listSpec |
	
	listSpec := aToolBuilder pluggableListSpec new
		model: self fightEvaluator;
		name: 'Turn Order';
		list: #fightingPlayersNames;
		getSelected: #currentPlayerName;
		yourself.
		
	^ aToolBuilder build: listSpec