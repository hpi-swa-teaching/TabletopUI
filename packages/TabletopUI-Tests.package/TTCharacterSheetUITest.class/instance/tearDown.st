running
tearDown

	self openedDisplays do: [:display | display closeSheet].
	super tearDown