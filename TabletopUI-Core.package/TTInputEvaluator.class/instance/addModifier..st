dice roll
addModifier: aNumber

	((aNumber) < 0) ifTrue: [
		^ (' - ' , (-1*aNumber))
	].
	((aNumber) > 0) ifTrue: [
		^ (' +' , aNumber)
	]