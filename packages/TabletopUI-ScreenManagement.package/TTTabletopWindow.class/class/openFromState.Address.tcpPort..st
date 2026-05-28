toolbuilder
openFromState: aDictionary Address: anAddress tcpPort: tcpPort
	
	| window |
	window:= self new.
	self setupNetworkOn: window Address: anAddress tcpPort: tcpPort.
	window
		loadState: aDictionary; 
		yourself.
	ToolBuilder open: window.
	^window.