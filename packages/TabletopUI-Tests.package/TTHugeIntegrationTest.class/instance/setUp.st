running
setUp

	self relay: TTRelayServer new.
	Processor yield.
	self server: (TTServer newOn: 'localhost' port: self relay getServerPort).
	Processor yield.
	self setupGamemasterOnPort: self relay getClientPort.
	self setupPlayerOnPort: self relay getClientPort.
	self waitFor: [(self gamemaster model dependents at: 2) isKindOf: TTGamemasterGameScreen] retry: [].
	self waitFor: [(self player model dependents at: 2) isKindOf: TTPlayerGameScreen] retry: []