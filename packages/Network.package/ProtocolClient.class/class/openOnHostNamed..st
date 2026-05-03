instance creation
openOnHostNamed: hostNameAndPort
	"If the hostname uses the colon syntax to express a certain port number we use that instead of the default port number."

	^self new openOnHostNamed: hostNameAndPort
	