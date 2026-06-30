sending
send: aMessage to: anId with: aParams

	self lastMessage: aMessage.
	self lastRecipient: anId.
	self lastParameters: aParams.
	self sendCount: (self sendCount ifNil: [0]) + 1