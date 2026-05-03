private protocol
recipient: aRecipient options: optionsDictionary
	"specify a recipient for the message.  aRecipient should be a bare email address"
	"RCPT <SP> TO:<forward-path> (<SP> OPTION)* <CRLF>"

	| optionsString |
	optionsString := self encodeOptions: optionsDictionary.
	self sendCommand: 'RCPT TO:<', aRecipient, '>' , optionsString.
	self checkResponse.