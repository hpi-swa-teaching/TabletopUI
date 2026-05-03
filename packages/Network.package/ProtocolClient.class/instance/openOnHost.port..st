private
openOnHost: hostIP port: portNumber
	"open a connection to a specific port on a host for which we have the IP number. 
	We handle any login if the user and password are set"
	self host: hostIP.
	self port: portNumber.
	self ensureConnection