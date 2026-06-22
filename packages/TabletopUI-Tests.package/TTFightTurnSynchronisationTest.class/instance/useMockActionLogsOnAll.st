helpers
useMockActionLogsOnAll

	self useMockActionLogOn: self server.
	self clients do: [:each | self useMockActionLogOn: each]