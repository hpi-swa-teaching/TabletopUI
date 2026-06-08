as yet unclassified
send: aMessage to: anId with: aParams
    lastMessage := aMessage.
    lastRecipient := anId.
    lastParameters := aParams.
    sendCount := (sendCount ifNil: [0]) + 1