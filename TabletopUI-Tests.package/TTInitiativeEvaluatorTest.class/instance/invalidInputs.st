accessing
invalidInputs

	^ super invalidInputs 
		add: 'start fight';
		add: 'end fight';
		add: 'remove Marknuß';
		yourself