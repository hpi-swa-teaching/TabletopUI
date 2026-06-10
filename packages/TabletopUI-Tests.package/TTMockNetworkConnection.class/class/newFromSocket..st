as yet unclassified
newFromSocket: tcpSocket

	| inst |
	inst := self new.
	inst tcpSocket: tcpSocket.
	^ inst