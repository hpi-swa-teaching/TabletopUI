initialize-release
loadState: aDictionary

	| character |
	aDictionary do: [:entry | | characterData name alreadyExists |
		characterData := entry at: #character.
		name := characterData at: #name.
		alreadyExists := self players anySatisfy: [:player | player name = name].
		alreadyExists ifFalse: [
			character := TTCharacter new
				loadState: characterData;
				yourself.
			character isNPC ifTrue: [self addNPC: character] ifFalse: [self addPlayer: character]]]