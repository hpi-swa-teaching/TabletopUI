screen management
continue
	|aDict|
	aDict:= Dictionary new
		at: #name put: self playerName asString;
		at: #role put: self role;
		at: #connectionDetails put: (Dictionary new
			at: #ip put: self address;
			at: #port put: (self tcpPort);
			yourself );
		yourself.
	self window networkManager send: #handlePlayerRegistration: to: 'sessionmanager' with: aDict.
		
	
	