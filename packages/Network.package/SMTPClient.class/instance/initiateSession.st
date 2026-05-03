private protocol
initiateSession
	"EHLO <SP> <domain> <CRLF>"

	self sendCommand: (self useHelo ifTrue: ['HELO '] ifFalse: ['EHLO ']) , self localHostName.
	self checkResponse.
	
	self responseMessage ifNotEmpty: [
		self parseCapabilities: self responseMessage lines allButFirst].

	(self tlsIsActive not and: [self serverSupportsStarttls] and: [self wantsStarttls])
		ifTrue: [
			self starttls.
			self responseIsSuccess ifTrue: [
				self initiateSession ] ]