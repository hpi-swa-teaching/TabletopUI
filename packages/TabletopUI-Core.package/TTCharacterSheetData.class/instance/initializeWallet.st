setup - initialization
initializeWallet

	self wallet: Dictionary new.
	self defaultCurrencies do: [:coin |
		self wallet at: coin put: 0]
	