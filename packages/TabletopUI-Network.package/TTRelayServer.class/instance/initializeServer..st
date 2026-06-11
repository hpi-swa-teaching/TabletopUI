initialization
initializeServer: tcpSocket

	self server: TTServerConnection new.
	self server relayServer: self.
	self server tcpSocket: tcpSocket.
	[
		[tcpSocket waitForConnectionFor: self serverConnectWaitDuration] on: Error do: [:e |
			self shouldClose ifFalse: [
				self kill.
				self error: e]].
		self server startListening] fork