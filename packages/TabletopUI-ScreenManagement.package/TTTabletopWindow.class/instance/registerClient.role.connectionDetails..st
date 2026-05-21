server session management
registerClient: name role: role connectionDetails: aDict

	self connectionRegistry at: name
		put: (Dictionary new
			at: #role put: role;
			at: #connectionDetails put: aDict;
			yourself)