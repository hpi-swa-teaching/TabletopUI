accessing
nameList

	| playerNameList |
	playerNameList := self characterAdministration players collect: [:aTTCharacter | aTTCharacter name].

	playerNameList withIndexDo: [:name :index |
		| token selectedToken |
		token := self tokenList at: index.
		selectedToken := token = TTCharacter defaultTokenName
			ifTrue: [token]
			ifFalse: [FileDirectory localNameFor: token].
		playerNameList at: index put: '[ ', selectedToken, ' ] ', name].

	^ playerNameList