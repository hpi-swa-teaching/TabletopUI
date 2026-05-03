instance creation
forExtension: fileExtension
	| mime |
	SmalltalkImage current platformName = 'Mac OS'
		ifTrue: 
			[mime := Smalltalk at: #MIMETypeMacResolver ifPresent: [:c | c getMIMETypeForFilename: 'a.',fileExtension]].
	mime ifNotNil: [^mime].
	^(self mimeMappings at: fileExtension asLowercase ifAbsent: [^nil]) first