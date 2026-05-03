printing
asHeaderValue
	| strm result |
	strm := WriteStream on: (String new: 20).
	strm nextPutAll: mainValue.
	parameters associationsDo: [:e | 
		strm 
			nextPut: $; ; 
			nextPutAll: e key;
		 	nextPutAll: '=';
		 	nextPutAll: e value].
	^ (result := strm contents) isAsciiString
		ifFalse: [QEncodingMimeConverter mimeEncode: result]
		ifTrue: [result]
