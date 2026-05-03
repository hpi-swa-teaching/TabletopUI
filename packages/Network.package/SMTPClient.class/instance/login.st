private protocol
login
	"Send HELO first"
	self initiateSession.
	self user ifNil: [^self].
	self user ifEmpty: [^self].
	self sendCommand: 'AUTH LOGIN ' , (self encodeAuthString: self user).
	[self checkResponse]
		on: TelnetProtocolError
		do: [ :ex | ex isCommandUnrecognized ifTrue: [^ self] ifFalse: [ex pass]].
	self sendCommand: (self encodeAuthString: self password).
	self checkResponse