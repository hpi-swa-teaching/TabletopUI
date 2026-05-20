screen management
continue
	|aDict|
	TTTabletopWindow openWithAddress: self address tcpPort: self tcpPort.
	aDict:= Dictionary new
		at: #name put: self name;
		at: #role put: self role;
		at: #connectionDetails put: (Dictionary new
			at: #ip put: self address;
			at: #port put: (self tcpPort);
			yourself );
		yourself.
		
	
	