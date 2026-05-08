receiving
sharedObjectReceive

	| messageBuffer messageDictionary |
	messageBuffer := self tryJsonReceive.
	messageBuffer ifNotNil: [
		messageDictionary := (Json readFrom: messageBuffer readStream) as: Dictionary.
		(self isMeantForMe: messageDictionary) ifFalse: [^ self].
		self performFrom: messageDictionary]