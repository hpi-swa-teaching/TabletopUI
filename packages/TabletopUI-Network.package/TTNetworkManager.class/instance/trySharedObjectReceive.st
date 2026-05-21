receiving
trySharedObjectReceive

	| class |
	(self isKindOf: TTClientNetworkManager) ifTrue: [class := 'Client'].
	(self isKindOf: TTClientNetworkManager) ifFalse: [class := 'Server'].
	Transcript
		show: class, 'NWM Trying receive';
		cr.
	"["
	
	self sharedObjectReceive
	"] on: Error do: [
		"
	"self coordinator notifyNetworkFail."
	"
		self shouldClose ifFalse: [self error: 'Error during receive - assuming connection was cut or other end bugged'].
		^ self]"