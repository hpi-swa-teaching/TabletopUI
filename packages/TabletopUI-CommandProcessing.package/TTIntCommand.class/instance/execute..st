execution
execute: aContext

	negated ifTrue: [^ -1 * self value] ifFalse: [^ self value]