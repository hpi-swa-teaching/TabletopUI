comparing
hasSameSchemeSpecificPartAs: anotherUrl
	"Should check whether this Url and the other Url are equal in their scheme specific parts. 
	This is hook is called by Url>>#=, which already checks schemeName and fragments, so no need to check them in your implementation of this method."

	self subclassResponsibility