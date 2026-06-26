as yet unclassified
broadcast: message

	| params |
	params := Dictionary new.
	params at: 'message' put: message.
	self networkmanager send: #registerMessage: to: 'actionLog' with: params.
	^ self