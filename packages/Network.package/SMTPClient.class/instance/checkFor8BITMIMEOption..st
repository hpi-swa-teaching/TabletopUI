private
checkFor8BITMIMEOption: optionsDictionary

	| smtputf8Set |
	smtputf8Set := optionsDictionary at: #BODY 
		ifPresent: [:value | value = '8BITMIME'] 
		ifAbsent: [false].
	smtputf8Set ifTrue: [
		(self serverSupports: '8BITMIME') 
			ifTrue: [self connectionInfo at: #'8BITMIME' put: true]
			ifFalse: [SMTPValueError 
				signal: 'Server does not support 8BITMIME, so we can not set the option']].