setup - initialization
initializeIdentity

	self identity: Dictionary new.
	self class identityNames
		do: [:key | self identity at: key put: '']