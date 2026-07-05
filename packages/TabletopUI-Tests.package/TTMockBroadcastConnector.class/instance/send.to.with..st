sending
send: message to: object with: params

	(self handleSessionManagerMessage: message to: object with: params) ifTrue: [^self].
	(self handleContextManagerMessage: message to: object with: params) ifTrue: [^self].
	(self handleMapUpdateMessage: message to: object with: params) ifTrue: [^self].
	self server perform: message asSymbol with: params