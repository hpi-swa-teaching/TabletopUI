examples
timeTestUDP
	"Attempt to connect to an ntp server running a 'daytime' service via UDP. Not all do, including so far as we can tell, the time,nist.gov server that handles the #timeTest method.
	The host *must* be running a UDP daytime server - note that these days very few actually do so and thus you may need to install one. Fortunately this is usually fairly simple; on a Ubuntu type linux system
	sudo apt install ncat
	sudo ncat -l 13 --keep-open --udp --send-only --exec '/bin/date'
	... ought to work. Ctrl-c to kill the ersatz server when you are done testing. "
	"Socket timeTestUDP"

	| serverName serverAddr s |
	Transcript show: 'initializing network ... '.
	self initializeNetwork.
	Transcript
		show: 'ok';
		cr.
	serverName := UIManager default request: 'What is your time server?'
				initialAnswer: 'localhost'.
	serverName isEmpty 
		ifTrue: 
			[^Transcript
				show: 'never mind';
				cr].
	serverAddr := NetNameResolver addressForName: serverName timeout: 10.
	serverAddr = nil 
		ifTrue: [self error: 'Could not find the address for ' , serverName].
	s := self newUDP.	"a 'random' port number will be allocated by the system"
	"Send a packet to the daytime port and it will reply with the current date."
	Transcript
		show: '---------- Sending datagram from port ' , s port printString 
					, ' ----------';
		cr.
	s 
		sendData: '!'
		toHost: serverAddr
		port: 13.	"13 is the daytime service"
	Transcript show: 'the time server reports: ' , s receiveData.
	s closeAndDestroy.
	Transcript
		show: '---------- Socket closed ----------';
		cr