message creation
messageToObject: object message: message withParams: params

	| jsonDict |
	jsonDict := Dictionary new.
	jsonDict at: 'Receiver-Ids' put: Array new.
	jsonDict at: 'Obj-Id' put: object networkId.
	jsonDict at: 'Msg-Id' put: message asString.
	jsonDict at: 'Params' put: params.
	^ Json render: jsonDict