initialization
initializeIdentity

	self identity: Dictionary new.
	#(characterName className background race alignment appearance)
		do: [:key | self identity at: key put: '']