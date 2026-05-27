as yet unclassified
registerTwoGameMasters
    | firstDict secondDict |
    firstDict := Dictionary new
        at: 'name' put: self validPlayerName;
        at: 'role' put: #gamemaster;
	  at: 'connectionDetails' put: (Dictionary new
					at: 'ip' put: '192.168.1.2';
					at: 'port' put: 16632;
					yourself);
				yourself.
    secondDict := Dictionary new
        at: 'name' put: self invalidPlayerName;
        at: 'role' put: #gamemaster;
        at: 'connectionDetails' put: (Dictionary new
					at: 'ip' put: '192.168.1.1';
					at: 'port' put: 16632;
					yourself);
	yourself.
    
    manager handlePlayerRegistration: firstDict.
    manager handlePlayerRegistration: secondDict.