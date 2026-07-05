listening
handleWaitingDuringReceiveError: exception

	self shouldClose: true.
	exception return: nil