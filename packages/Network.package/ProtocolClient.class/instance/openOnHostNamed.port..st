private
openOnHostNamed: hostName port: portNumber
	"open a connection to a specific port on a server"
	| serverIP |
	serverIP := NetNameResolver addressForName: hostName timeout: 20.
	self 
		hostName: hostName;
		openOnHost: serverIP port: portNumber