listening
handleWaitingDuringReceiveError: exception

	| class |
	(self isKindOf: TTClientNetworkManager) ifTrue: [class := 'Client'].
	(self isKindOf: TTClientNetworkManager) ifFalse: [class := 'Server'].
	Transcript
		show: class, ' WaitingDuringReceive relay error';
		cr.
	self shouldClose: true.
	exception return: nil