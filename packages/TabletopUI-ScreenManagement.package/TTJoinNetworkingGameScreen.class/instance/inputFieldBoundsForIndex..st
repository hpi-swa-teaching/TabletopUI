toolbuilder
inputFieldBoundsForIndex: aNumber

	| topLeft bottomRight |
	
	topLeft := 0 @ (self inputFieldHeight * (aNumber - 1)).
	bottomRight := self inputFieldWidth @ self inputFieldHeight + topLeft.
	
	^ topLeft corner: bottomRight