message creation
createNetworkMessage: message to: id with: params

	| messageDictionary |
	messageDictionary := Dictionary new.
	messageDictionary at: 'Receiver-Ids' put: Array new.
	messageDictionary at: 'Obj-Id' put: id.
	messageDictionary at: 'Msg-Id' put: message asString.
	messageDictionary at: 'Params' put: params.
	^ Json render: messageDictionary