tests
sendTest
	"Send data to the 'discard' socket of the given host.
	Tests the speed of one-way data transfers across the network to the given host. 
	The host *must* be running a TCP discard server - note that these days very few actually do so and thus you may need to install one. Fortunately this is usually fairly simple; on a Ubuntu type linux system
	sudo apt install ncat
	sudo ncat -l --keep-open 9 --recv-only > /dev/null
	... ought to work. Ctrl-c to kill the ersatz server when you are done testing. "

	"Socket sendTest"

	| sock bytesToSend sendBuf bytesSent t serverName serverAddr |
	Transcript cr; show: 'starting send test'; cr.
	self initializeNetwork.
	serverName := UIManager default request: 'What is the destination server?' initialAnswer: 'create.ucsb.edu'.
	serverAddr := NetNameResolver addressForName: serverName timeout: 10.
	serverAddr = nil 
		ifTrue: [^self inform: 'Could not find an address for ' , serverName].
	sock := self new.
	Transcript show: '---------- Connecting ----------';cr.
	sock connectTo: serverAddr port: 9.
	sock isConnected ifFalse: [
		sock destroy.
		^self inform: 'could not connect'].
	Transcript show: 'connection established; sending data'; cr.
	bytesToSend := 1000000.
	sendBuf := String new: 64 * 1024 withAll: $x.
	bytesSent := 0.
	t := Time millisecondsToRun: 
					[[bytesSent < bytesToSend] whileTrue: 
							[sock sendDone 
								ifTrue: [bytesSent := bytesSent + (sock sendSomeData: sendBuf)]]].
	sock waitForSendDoneFor: self standardTimeout.
	sock destroy.
	Transcript show: '---------- Connection Closed ----------'; cr;
		show: 'send test done; time = ' , t printString; cr;
		show: (bytesToSend asFloat / t printShowingMaxDecimalPlaces: 2), ' * 1000 bytes/sec';cr;endEntry