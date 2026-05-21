initialization
launchWithPlayerCount: playerCount

	self relay: TTRelayServer new.
	self clients: Set new.
	[
		self lauchClients: playerCount.
		self launchServerWithPlayerCount: playerCount] fork