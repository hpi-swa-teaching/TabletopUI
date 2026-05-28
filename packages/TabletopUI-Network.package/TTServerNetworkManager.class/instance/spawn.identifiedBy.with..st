sending
spawn: anObjectClass identifiedBy: networkId with: additionalParams

	| params jsonMessage |
	params := additionalParams copy.
	params
		at: 'Obj-Type' put: anObjectClass;
		at: 'Id' put: networkId.
	jsonMessage := TTJSONifier createNetworkMessage: #spawn: to: 'spawner' with: params.
	self tcpSend: jsonMessage