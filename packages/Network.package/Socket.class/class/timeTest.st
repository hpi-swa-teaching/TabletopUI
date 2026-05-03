examples
timeTest
	"Attempt to connect to an ntp server running a TCP 'daytime' service. Not all do, but as of 2023 the below nist server does.
	The host *must* be running a TCP daytime server - note that these days very few actually do so and thus you may need to install one. Fortunately this is usually fairly simple; on a Ubuntu type linux system
	sudo apt install ncat
	sudo ncat -l 13 --keep-open --send-only --exec '/bin/date'
	... ought to work. Ctrl-c to kill the ersatz server when you are done testing. "
	"Socket timeTest"

	| serverName serverAddr s |
	Transcript show: 'initializing network ... '.
	self initializeNetwork.
	Transcript
		show: 'ok';
		cr.
	serverName := UIManager default request: 'What is your time server?'
				initialAnswer: 'time.nist.gov'.
	serverName isEmpty 
		ifTrue: 
			[^Transcript
				show: 'never mind';
				cr].
	serverAddr := NetNameResolver addressForName: serverName timeout: 10.
	serverAddr = nil 
		ifTrue: [self error: 'Could not find the address for ' , serverName].
	s := self new.
	Transcript
		show: '---------- Connecting ----------';
		cr.
	s connectTo: serverAddr port: 13.	"13 is the 'daytime' port number"
	s waitForConnectionUntil: (self deadlineSecs: 1).
	Transcript show: 'the time server reports: ' , s receiveData.
	s closeAndDestroy.
	Transcript
		show: '---------- Connection Closed ----------';
		cr