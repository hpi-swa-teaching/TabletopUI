utility
checkForCRLF: inputString

	(inputString includesAnyOf: String crlf) ifTrue: [
		SMTPValueError signal: 'Command argument or options may not contain CRLF'].