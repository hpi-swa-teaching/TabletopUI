running
setUp

	| map |
	self resource: TTTestResource current.
	map := TTMap newWith: {}.
	self imageBar: (TTImageBar newWith: map)