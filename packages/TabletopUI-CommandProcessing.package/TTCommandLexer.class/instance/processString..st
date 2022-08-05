as yet unclassified
processString: aString

	| currentToken |
	self tokens: OrderedCollection new.
	
	currentToken := ''.
		
	aString do: [ :aCharacter |
		(self splitAndDiscard includes: aCharacter) ifTrue: [
			self addToken: currentToken.
			currentToken := '']
		ifFalse: [
			(self splitAndKeep includes: aCharacter) ifTrue: [
				self addToken: currentToken.
				self addToken: aCharacter asString.
				currentToken := ''] 
			ifFalse: [
				currentToken := currentToken, aCharacter asString]]].

	self addToken: currentToken.