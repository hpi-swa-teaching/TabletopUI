running
tearDown

	self relay ifNotNil: [:r | r kill].
	self server ifNotNil: [:s | s kill].
	self gamemasterModel ifNotNil: [:g | g kill].
	self playerModel ifNotNil: [:p | p kill]