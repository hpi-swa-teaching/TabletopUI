as yet unclassified
nameList

	| playerNameList |
	playerNameList := self characterAdministration players collect: [:aTTCharacter | aTTCharacter name].

	Transcript show: self tokenList.
	playerNameList withIndexDo: [ :name :index |
		| selectedToken |
		selectedToken := self tokenList at: index.
		playerNameList at: index put: '[ ', selectedToken, ' ] ', name].
	
	^ playerNameList