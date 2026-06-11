teardown
tearDown

	self clients do:[:client | self deleteWindowOf: client].
	self deleteWindowOf: self server.