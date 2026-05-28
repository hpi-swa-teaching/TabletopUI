sending
createNetworkMessageWithClientId

	| params |
	params := Dictionary new.
	params at: #clientId put: self clientId.
	^ TTJSONifier messageToId: #networkManager message: #setClientId: withParams: params