as yet unclassified
createNetworkMessage: message to: id with: params on: receiverIds

	| messageDictionary |
	messageDictionary := Dictionary new.
	messageDictionary at: 'Receiver-Ids' put: receiverIds.
	messageDictionary at: 'Obj-Id' put: id.
	messageDictionary at: 'Msg-Id' put: message asString.
	messageDictionary at: 'Params' put: params.
	^ Json render: messageDictionary