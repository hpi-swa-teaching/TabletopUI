utility
closeConnectionOn421: aBlockClosure

	aBlockClosure
		on: TelnetProtocolError
		do: [:ex | 
			ex code = 421 ifTrue: [
				"A 421 response indicates that the server will disconnect after
				the reply. The connection is stale and we should also disconnect."
				self close].
			ex pass]