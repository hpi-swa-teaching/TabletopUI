instance creation
openConnectionToHostNamed: hostName port: portNumber
	
	| addressInformations stream |
	NetNameResolver useOldNetwork
		ifTrue: [	| hostIP |
			hostIP := NetNameResolver addressForName: hostName timeout: 20.
			hostIP ifNil: [NetworkError signal: ('Cannot resolve {1}.' translated format: {hostName})].
			^self openConnectionToHost: hostIP port: portNumber].
	addressInformations := SocketAddressInformation
			forHost: hostName
			service: portNumber asString
			flags: 0
			addressFamily: 0
			socketType: SocketAddressInformation socketTypeStream
			protocol: SocketAddressInformation protocolTCP.
	addressInformations ifEmpty: [
		NoNetworkError signal: ('Could not find a network for {1} on port {2}' translated format: {hostName. portNumber})].
	stream := addressInformations readStream.
	^ [self on: stream next connect] on: NetworkError
			do: [:exc | stream atEnd
					ifTrue:
						["No more address to retry, pass the exception to upper level"
						exc pass]
					ifFalse:
						["retry with next address"
						exc retry]].