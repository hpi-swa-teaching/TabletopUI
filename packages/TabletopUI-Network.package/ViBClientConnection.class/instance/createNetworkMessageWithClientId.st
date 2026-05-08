sending
createNetworkMessageWithClientId

	| params |
	params := Dictionary new.
	params at: #clientId put: self clientId.
	^ ViBJSONifier messageToId: #networkManager message: #setClientId: withParams: params