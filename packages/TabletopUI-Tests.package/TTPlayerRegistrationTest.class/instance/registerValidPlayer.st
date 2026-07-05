testing
registerValidPlayer

	| aDict |
	aDict := Dictionary new
		at: 'name' put: self acceptedPlayerName;
		at: 'role' put: 'gamemaster';
		at: 'connectionDetails' put: (Dictionary new
			at: 'ip' put: '192.168.1.1';
			at: 'port' put: self defaultTestPort;
			yourself);
		yourself.
	
	self manager handlePlayerRegistration: aDict