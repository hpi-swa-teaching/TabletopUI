receiving
isMeantForMe: messageDict

	| receiverIds |
	receiverIds := messageDict at: 'Receiver-Ids'.
	receiverIds = #() ifFalse: [^ receiverIds includes: self clientId].
	^ true