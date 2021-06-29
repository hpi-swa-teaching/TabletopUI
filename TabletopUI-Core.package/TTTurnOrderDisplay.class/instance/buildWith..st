accessing
buildWith: aToolBuilder

	| listSpec |
	
	listSpec := aToolBuilder pluggableListSpec new
		model: self;
		name: 'Turn Order';
		list: #participants;
		getSelected: #currentPlayer;
		yourself.
		
	^ aToolBuilder build: listSpec