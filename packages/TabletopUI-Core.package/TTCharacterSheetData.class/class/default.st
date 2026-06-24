templates
default

	^ self new
		className: 'Adventurer';
		hitDieType: 8;
		initializeHP;
		yourself