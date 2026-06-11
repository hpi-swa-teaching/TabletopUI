logging
logInput: aString

	| params |
	"self actionLogList addLast: ('INPUT: ' , aString)."
	params := Dictionary new.
	params at: 'message' put: 'INPUT: ', aString.
	self networkmanager send: #receiveChatMessage: to: 'chat' with: params.
	self changed: #actionLogList