setup - initialization
initializeWallet

	self wallet: Dictionary new.
	self class currencies do: [:coin |
		self wallet at: coin put: self defaultMoney]
	