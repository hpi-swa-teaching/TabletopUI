accessing
nextToken

	self tokens ifEmpty: [^ nil].
	^ self tokens removeFirst