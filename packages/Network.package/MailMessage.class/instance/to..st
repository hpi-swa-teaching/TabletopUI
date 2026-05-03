accessing
to: aString

	| sanitizedMailAddresses |
	sanitizedMailAddresses := (MailAddressParser addressesIn: aString) withoutDuplicates.
	^self setField: 'to' toString: (sanitizedMailAddresses joinSeparatedBy: ', ')