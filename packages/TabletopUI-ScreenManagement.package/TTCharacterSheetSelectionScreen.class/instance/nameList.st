accessing
nameList

	| playerNameList |
	playerNameList := self characterAdministration players collect: [:aTTCharacter | aTTCharacter name].

	playerNameList withIndexDo: [ :name :index |
		| selectedCheet |
		(self characterSheets at: index) = 'default'
			ifTrue: [selectedCheet := self characterSheets at: index]
			ifFalse: [selectedCheet := FileDirectory localNameFor: (self characterSheets at: index)].
		playerNameList at: index put: '[ ', selectedCheet, ' ] ', name].
	
	^ playerNameList