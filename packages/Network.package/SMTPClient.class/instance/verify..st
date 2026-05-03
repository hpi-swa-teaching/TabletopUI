private protocol
verify: address
	"ask the server for a verification of the address"
	"VRFY <SP> MAILBOX"

	"inform the server we are sending the message data"
	self sendCommand: 'VRFY ' , address.
	self checkResponse.