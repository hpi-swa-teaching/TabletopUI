accessing
contentID

	| value |
	value := (self fieldNamed: 'content-id' ifAbsent: [^ nil]) mainValue.
	(value notEmpty and: [value first = $<] and: [value last = $>]) ifTrue: [
		value := value allButFirst allButLast].
	^ value