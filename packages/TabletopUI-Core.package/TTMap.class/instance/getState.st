accessing
getState

	| dict tokenState characterState |
	dict := Dictionary new.

	self tokens do: [:characterToken |
		characterToken ifNotNil: [
			tokenState := characterToken getState.
			characterState := tokenState at: TTGameStateKeys keyCharacter.
			dict
				at: (characterState at: TTGameStateKeys keyName)
				put: tokenState ] ].

	^ Dictionary new
		at: TTGameStateKeys keyCharacterTokens put: dict;
		yourself