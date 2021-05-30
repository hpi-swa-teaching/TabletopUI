dice roll
formatDiceRolls: anOrderedCollection

	| formattedString |

	formattedString := (anOrderedCollection at: 1) asString.
	(anOrderedCollection size > 1) ifTrue: [
		anOrderedCollection fold: [:a :aNumber | formattedString := formattedString , ' + ' , aNumber]].
	
	^ formattedString