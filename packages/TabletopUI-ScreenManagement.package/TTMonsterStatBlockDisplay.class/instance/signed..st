formatting
signed: aModifierString

	(aModifierString notEmpty and: [aModifierString first = $-])
		ifTrue: [^ aModifierString].
	^ '+', aModifierString