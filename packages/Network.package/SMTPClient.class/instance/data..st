private protocol
data: messageData
	"send the data of a message"
	"DATA <CRLF>"

	"inform the server we are sending the message data"
	self sendCommand: 'DATA'.
	self checkResponse.
	self responseCode ~= 354 ifTrue: [
		(TelnetProtocolError protocolInstance: self) 
			signal: 'Received unexpected response on command for data transmission'].

	"check data"
	messageData isAsciiString ifFalse: [
		(self connectionInfo at: #'8BITMIME' ifAbsent: false) ifFalse: [
			SMTPValueError signal: 'Server does not support non-ascii content, but message contains non-ascii characters']].

	"process the data one line at a time"
	messageData linesDo:  [ :messageLine | | cookedLine |
		cookedLine := messageLine.
		(cookedLine beginsWith: '.') ifTrue: [ 
			"lines beginning with a dot must have the dot doubled"
			cookedLine := '.', cookedLine ].
		self sendCommand: cookedLine ].

	"inform the server the entire message text has arrived"
	self sendCommand: '.'.
	self checkResponse.