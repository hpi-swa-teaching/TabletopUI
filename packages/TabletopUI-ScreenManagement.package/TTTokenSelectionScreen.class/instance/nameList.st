accessing
nameList

	| playerNameList |
	playerNameList := self characterAdministration players collect: [:aTTCharacter | aTTCharacter name].

	playerNameList withIndexDo: [ :name :index |
		| selectedToken |
		(self tokenList at: index) = 'default'
			ifTrue: [selectedToken := self tokenList at: index]
			ifFalse: [selectedToken := FileDirectory localNameFor: (self tokenList at: index)].
		playerNameList at: index put: '[ ', selectedToken, ' ] ', name].
	
	^ playerNameList