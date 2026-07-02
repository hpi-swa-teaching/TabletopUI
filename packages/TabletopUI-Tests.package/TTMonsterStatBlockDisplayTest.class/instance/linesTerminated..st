helpers
linesTerminated: anArray

	^ String streamContents: [:s |
		anArray do: [:line | s nextPutAll: line; nextPutAll: self defaultDisplay newline]]