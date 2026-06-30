initialization
close

	self aboutToBeClosed: true.
	self notifyObservers.
	