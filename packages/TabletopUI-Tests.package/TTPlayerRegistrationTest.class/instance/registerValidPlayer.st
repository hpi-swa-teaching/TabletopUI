as yet unclassified
registerValidPlayer

	| aDict |
	aDict:= Dictionary new
				at: 'name' put: self validPlayerName;
				at: 'role' put: 'gamemaster';
				at: 'connectionDetails' put: (Dictionary new
					at: 'ip' put: '192.168.1.1';
					at: 'port' put: 16632;
					yourself);
				yourself.
					
	self manager handlePlayerRegistration: aDict.