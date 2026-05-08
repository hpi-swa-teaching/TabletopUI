displaying
displayMessage: message atPosition: aPosition

	| morph |
	morph := StringMorph contents: message.
	morph position: self position + aPosition.
	self addMorph: morph