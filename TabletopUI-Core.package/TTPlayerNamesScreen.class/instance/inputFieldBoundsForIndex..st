toolbuilder
inputFieldBoundsForIndex: aNumber

	| topLeft bottomRight |
	
	topLeft := 0.3 @ (self class inputFieldHeight * aNumber + 0.2).
	bottomRight := self class inputFieldWidth @ self class inputFieldHeight + topLeft.
	
	^ topLeft corner: bottomRight