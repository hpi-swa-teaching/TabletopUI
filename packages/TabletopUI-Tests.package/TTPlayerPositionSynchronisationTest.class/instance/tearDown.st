as yet unclassified
tearDown

	self clients do:[:client | client window contents first owner delete].
	self server window contents first owner delete.