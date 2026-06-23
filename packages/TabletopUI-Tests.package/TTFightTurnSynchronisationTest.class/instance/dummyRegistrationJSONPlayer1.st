setup
dummyRegistrationJSONPlayer1

	^ Dictionary new
		at: 'name' put: 'Alice';
		at: 'role' put: 'player';
		at: 'connectionDetails' put: (Dictionary new
			at: 'ip' put: '';
			at: 'port' put: 0;
			yourself);
		yourself