class initialization
initializeDefaultSubTypeSuffixes
	"MIMEType initializeDefaultSubTypeSuffixes"

	| defaultSuffixes |
	defaultSuffixes := Dictionary new: 43.
	defaultSuffixes
		at: 'jpeg' put: 'jpg';
		yourself.
	^defaultSuffixes