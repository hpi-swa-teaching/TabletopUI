ui constants
sendMailButtonLabel

	^ (self isSending
		ifTrue: ['sending...']
		ifFalse: ['send mail']) translated