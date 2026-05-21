sending
informClientAboutId

	| message |
	message := self createNetworkMessageWithClientId.
	self sendMessage: message