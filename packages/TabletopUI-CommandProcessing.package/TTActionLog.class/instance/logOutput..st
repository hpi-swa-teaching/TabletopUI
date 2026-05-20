logging
logOutput: aString

	| params |
	"self actionLogList addLast: ('> ' , aString)."
	params := Dictionary new.
	params at: 'message' put: '> ', aString.
	self networkmanager send: #receiveChatMessage: to: 'chat' with: params.
	self changed: #actionLogList