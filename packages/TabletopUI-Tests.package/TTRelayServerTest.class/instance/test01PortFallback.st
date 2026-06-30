testing
test01PortFallback
	|relay1 relay2 tcpPort1 tcpPort2|
	
	relay1 := TTRelayServer new.
	relay2 := TTRelayServer new.
	
	tcpPort1 := relay1 getClientPort.
	tcpPort2 := relay2 getClientPort.
	
	relay1 kill.
	relay2 kill.
	
	self deny: tcpPort1 = tcpPort2