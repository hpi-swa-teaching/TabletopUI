listening
listeningBlock

	^ [
		[self listeningActive] whileTrue: [
			self tcpSocket isConnected ifTrue: [
				[self receive]
					on: Error
					do: [:exception | self handleWaitingDuringReceiveError: exception]]].
		self terminateConnection]