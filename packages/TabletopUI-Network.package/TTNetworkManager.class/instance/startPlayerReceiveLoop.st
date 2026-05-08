initialization
startPlayerReceiveLoop

	[
		[self shouldClose] whileFalse: [
			[self udpSocket waitForDataFor: self defaultTimeoutSeconds] on: ConnectionTimedOut do: [].
			"Intentionally empty. While the game is running, there is no guarantee that new data will be received within any given time window."
			[self udpSocket dataAvailable] whileTrue: [self playerReceive]]] fork