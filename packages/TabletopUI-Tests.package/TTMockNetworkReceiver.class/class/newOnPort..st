initialization
newOnPort: tcpPort

	| inst |
	inst := self new.
	inst listenOn: tcpPort.
	self assert: inst connection tcpSocket isValid.
	^ inst