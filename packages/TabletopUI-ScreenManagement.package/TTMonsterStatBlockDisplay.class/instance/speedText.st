formatting
speedText

	| stream |
	stream := WriteStream on: String new.
	stream nextPutAll: self sheet speed asString; nextPutAll: ' ft.'.
	self sheet additionalSpeeds do: [:each |
		stream
			nextPutAll: ', ';
			nextPutAll: (each at: #name);
			nextPutAll: ' ';
			nextPutAll: (each at: #value) asString;
			nextPutAll: ' ft.'].
	^ stream contents
