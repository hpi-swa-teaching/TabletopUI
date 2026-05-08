udp-relaying
udpListeningBlock

	^ [
		[self shouldClose] whileFalse: [
			[
				[self udpSocket waitForDataFor: self defaultTimeoutSeconds] on: ConnectionTimedOut do: ["Not receiving data for a few seconds is expected"
				]]
				on: Error
				do: [:ex |
					self shouldClose: true.
					ex return: nil].
			[udpSocket dataAvailable] whileTrue: [self playerReceive]]]