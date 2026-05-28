receiving
handleReceivingError

	| class |
	(self isKindOf: TTClientNetworkManager) ifTrue: [class := 'Client'].
	(self isKindOf: TTClientNetworkManager) ifFalse: [class := 'Server'].
	Transcript
		show: class, ' Receiving relay error';
		cr.
	self shouldClose: true