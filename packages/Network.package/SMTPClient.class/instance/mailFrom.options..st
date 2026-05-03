private protocol
mailFrom: fromAddress options: optionsDictionary
	" MAIL <SP> FROM:<reverse-path> (<SP> OPTION)* <CRLF>"

	| address optionsString |
	"We need to manually check for CRLF, as the MailAddressParser will try to 
	get an email address from the input no matter what."
	self checkForCRLF: fromAddress. 
	address := fromAddress ifNotEmpty: [
		(MailAddressParser addressesIn: fromAddress) first].

	optionsString := self encodeOptions: optionsDictionary.
	self checkFor8BITMIMEOption: optionsDictionary.

	self sendCommand: 'MAIL FROM:<', address, '>' , optionsString.
	self checkResponse.
	