cleanup
deleteAllTurnOrderWindows

	self deleteTurnOrderWindowsOf: self server.
	self clients do: [:each | self deleteTurnOrderWindowsOf: each].
	self deleteOrphanedTurnOrderWindows