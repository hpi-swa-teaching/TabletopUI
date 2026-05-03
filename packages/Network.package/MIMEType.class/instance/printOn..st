printing
printOn: stream

	stream
		nextPutAll: main; nextPut: $/ ;
		nextPutAll: sub.
	parameters ifNotNil: [
		parameters isString
			ifTrue: [ "OLD: broken parameter parsing"
				stream nextPutAll: parameters]
			ifFalse: [ "NEW: correct key-value parsing"
				parameters keysAndValuesDo: [:key :value |
					stream
						nextPut: $; ; space;
						nextPutAll: key;
						nextPut: $= .
					(value includesAnyOf: ';=/')
						ifTrue: [stream nextPut: $"; nextPutAll: value; nextPut: $"]
						ifFalse: [stream nextPutAll: value]] ]]