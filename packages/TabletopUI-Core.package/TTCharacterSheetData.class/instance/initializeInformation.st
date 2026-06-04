setup - initialization
initializeInformation

	self information: Dictionary new.
	self class informationNames do: [:key | self information at: key put: '']