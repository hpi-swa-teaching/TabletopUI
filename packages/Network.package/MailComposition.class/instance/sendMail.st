actions
sendMail

	self isSending ifFalse: [
		self saveFields.

		self setSending.
	
		[[self doSendMail] on: Error do: [:e | self resetSending. e signal].
		Project current addDeferredUIMessage: [self changed: #close].] 
			forkAt: 30.
			
		self 
			changed: #sendMailButtonLabel;
			changed: #sendMailButtonColor]