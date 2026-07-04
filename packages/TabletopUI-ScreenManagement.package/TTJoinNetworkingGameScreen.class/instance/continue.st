screen management
continue

	| aDict |
	self networkFacade connectTo: self address tcpPort: self tcpPort.
	aDict := self connectionParameters.
	self networkFacade send: #handlePlayerRegistration: to: 'sessionmanager' with: aDict.
	self window setRole: self role.
	self window owningPlayerName: self playerName asString