setup - initialization
initializeInformation

	self information: Dictionary new.
	self informationKeys do: [:key | self information at: key put: '']