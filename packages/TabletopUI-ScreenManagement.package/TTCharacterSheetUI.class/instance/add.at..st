layout containers
add: aContainer at: aPoint
 
	self sheet addMorph: aContainer.
	aContainer position: self sheet position + aPoint.