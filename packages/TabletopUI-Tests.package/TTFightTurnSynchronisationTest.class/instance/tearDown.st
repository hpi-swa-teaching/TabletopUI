running
tearDown

	self deleteAllTurnOrderWindows.
	self clients do: [:each | self deleteWindowOf: each].
	self deleteWindowOf: self server