ui constants
sendMailButtonColor

	^ self isSending
		ifTrue: [Color green lighter duller]
		ifFalse: [PluggableButtonMorph new userInterfaceTheme color]