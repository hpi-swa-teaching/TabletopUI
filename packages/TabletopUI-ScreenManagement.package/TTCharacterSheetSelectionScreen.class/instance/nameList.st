accessing
nameList

	| playerNameList |
	playerNameList := self characterAdministration players collect: [:aTTCharacter | aTTCharacter name].

	playerNameList withIndexDo: [ :name :index |
		| selectedSheet |
		selectedSheet := self characterSheets at: index.
		playerNameList at: index put: '[ ', selectedSheet, ' ] ', name].
	
	^ playerNameList