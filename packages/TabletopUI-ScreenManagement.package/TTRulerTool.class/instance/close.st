initialize-release
close

	self aboutToBeClosed: true.
	self notifyObservers.
	