class initialization
initializeDefaultSuffixes
	"MIMEType initializeDefaultSubTypeSuffixes"
	"DefaultSuffixes := nil"

	| defaultSuffixes |
	defaultSuffixes := Dictionary new: 43.
	defaultSuffixes
		at: 'image/jpeg' put: 'jpg';
		at: 'audio/x-mpeg' put: 'mp3';
		at: 'video/x-mpeg' put: 'mpg';
		at: 'image/png' put: 'png';
		at: 'text/xml' put: 'xml';
		yourself.
	^defaultSuffixes