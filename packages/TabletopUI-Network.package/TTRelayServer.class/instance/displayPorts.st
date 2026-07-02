displaying
displayPorts

	self displayMessage: 'ClientPort: ', self getClientPort asString atPosition: 20 @ 20.
	self displayMessage: 'Serverport ', self getServerPort asString atPosition: 20 @ 50