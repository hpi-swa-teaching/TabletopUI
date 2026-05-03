utilities
pingPortsOn: hostName
	"Attempt to connect to a set of well-known sockets on the given host, and answer the names of the available ports.
	See also the comment for #ping: regarding server services. And also note that this is quite likely to seem like a port scanning attack to the server so be careful that it doesn't bite back"
	"Socket pingPortsOn: 'www.disney.com'"

	^ Socket
		pingPorts: #(7 13 19 21 23 25 80 110 119)
		on: hostName
		timeOutSecs: 20
