player-positioning
broadcastPositions

	| message |
	message := ViBJSONifier
		messageToId: 'playerManager'
		message: #updatePlayers:
		withParams: self playerPositions.
	self udpEndpoints do: [:endpoint |
		[self udpSocket sendData: message toHost: endpoint address port: endpoint port]
			on: Error
			do: [:ex | "on udp error we accept that a packet was lost and continue"
			]]