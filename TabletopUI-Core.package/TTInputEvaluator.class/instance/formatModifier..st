dice roll
formatModifier: aNumber

	| modifierString |

	modifierString := ''.
	(aNumber < 0) ifTrue: [
		modifierString := (' - ' , (-1 * aNumber))].
	(aNumber > 0) ifTrue: [
		modifierString := (' +' , aNumber)].

	^ modifierString