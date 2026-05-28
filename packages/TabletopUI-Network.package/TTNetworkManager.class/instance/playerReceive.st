receiving
playerReceive
	"Executes an arbitrary message on an arbitrary local object as requested via network."

	| data params object messageDictionary |
	data := self udpSocket receiveData.
	messageDictionary := (Json readFrom: data asString readStream) as: Dictionary.
	params := (messageDictionary at: 'Params') as: Dictionary.
	object := self referenceManager resolve: 'playerManager'.
	object perform: (messageDictionary at: 'Msg-Id') asSymbol with: params