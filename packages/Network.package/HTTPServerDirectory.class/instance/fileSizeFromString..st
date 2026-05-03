misc
fileSizeFromString: aString
	| size |
	size := aString asNumber.
	('KMGTP' indexOf: aString last asUppercase ifAbsent: nil) ifNotNil:
		[:index| size := size * (2 raisedTo: index * 10)]. "1k = 2^10, etc..."
	^size asInteger