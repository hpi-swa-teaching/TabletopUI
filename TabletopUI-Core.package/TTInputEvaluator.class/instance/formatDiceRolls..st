dice roll
formatDiceRolls: anOrderedCollection

	| formattedString |

	formattedString := anOrderedCollection first asString.
	(anOrderedCollection size > 1) ifTrue: [
		anOrderedCollection fold: [:a :aNumber | formattedString := formattedString , ' + ' , aNumber]].
	
	^ formattedString