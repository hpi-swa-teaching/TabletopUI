accessing
cache: anObject
	"if anObject is nil, then clear out cache - don't store values to disc"
	anObject ifNil: [^cache := nil].
	"Otherwise, 'encode' (trivially) the password while it resides in memory - no plain text"
	cache := self decode: anObject