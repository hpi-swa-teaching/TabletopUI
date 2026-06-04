setup - initialization
initializeAttacks

	self attacks: Dictionary new.
	1 to: self class attackCount do: [:index |
		self attacks at: index put: (Dictionary new
			at: #name put: '';
			at: #bonus put: '';
			at: #damage put: '';
			at: #damageType put: '';
			yourself)]