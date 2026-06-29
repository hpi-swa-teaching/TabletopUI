constants
dummyRegistrationJSONPlayer2

^Dictionary new
	at: #name put: 'second';
	at: #role put: 'player';
	at: #connectionDetails put: (Dictionary new
		at: #ip put: '';
		at: #port put: 1;
		yourself );
	yourself


	