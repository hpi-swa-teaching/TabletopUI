instance creation
fromFileNamed: fileName

	| contents |
	contents := FileStream readOnlyFileNamed: fileName do: [:stream |
		stream contents].
	^ self from: contents