toolbuilder
inputFieldBoundsForIndex: aNumber

	| topLeft bottomRight |
	
	topLeft := 0 @ (self class inputFieldHeight * (aNumber - 1)).
	bottomRight := self class inputFieldWidth @ self class inputFieldHeight + topLeft.
	
	^ topLeft corner: bottomRight