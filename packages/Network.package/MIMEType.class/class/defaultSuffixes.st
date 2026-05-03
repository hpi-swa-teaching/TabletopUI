class initialization
defaultSuffixes
	"MIMEType defaultSuffixes"

	^DefaultSuffixes ifNil: [DefaultSuffixes := self initializeDefaultSuffixes]