accessing
send: aMessage to: anId with: params

	anId = self id ifFalse: [self error: 'Message sent to wrong id'].
	self networkObject perform: aMessage with: params