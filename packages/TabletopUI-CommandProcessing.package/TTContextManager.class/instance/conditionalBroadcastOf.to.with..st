network
conditionalBroadcastOf: aMessage to: anId with: params

	(params at: 'receiver') = 'server' ifTrue: [
		params at: 'receiver' put: 'client'.
		self networkFacade send: aMessage to: anId with: params]