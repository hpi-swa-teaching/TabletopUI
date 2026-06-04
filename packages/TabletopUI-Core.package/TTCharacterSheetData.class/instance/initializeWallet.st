setup - initialization
initializeWallet

	self wallet: Dictionary new.
	self currencies do: [:coin |
		self wallet at: coin put: 0]
	