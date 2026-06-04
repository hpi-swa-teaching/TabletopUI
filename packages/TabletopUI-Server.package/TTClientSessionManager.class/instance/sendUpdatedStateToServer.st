as yet unclassified
sendUpdatedStateToServer

	| state |
	
	state := self window getState.
	self networkmanager send: 'handleClientUpdate:' to: 'sessionmanager' with: state. 