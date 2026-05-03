private
openOnHostNamed: hostNameAndPort
	"If the hostname uses the colon syntax to express a certain port number
	we use that instead of the default port number."

	| thing hostName port |
	"derive a host name and port number"
	thing := hostNameAndPort splitBy: ':'.
	hostName := thing first.
	port := (thing at: 2 ifAbsent: [self defaultPortNumber]) asInteger.
	
	^self openOnHostNamed: hostName port: port
	