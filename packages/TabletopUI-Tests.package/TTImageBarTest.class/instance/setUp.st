running
setUp

	| map |
	map := TTMap newWith: {}.
	self imageBar: (TTImageBar new map: map; yourself)