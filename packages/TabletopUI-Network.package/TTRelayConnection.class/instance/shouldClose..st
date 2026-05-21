accessing
shouldClose: aBoolean

	| class |
	(self isKindOf: TTClientConnection) ifTrue: [class := 'Client'].
	(self isKindOf: TTClientConnection) ifFalse: [class := 'Server'].
	Transcript
		show: class, ' relay connection should close: ', aBoolean asString;
		cr.
	shouldClose := aBoolean