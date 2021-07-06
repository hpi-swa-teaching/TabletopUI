token placement
findFreeTile

	self tiles indicesDo: [:row :column | 
		(self tiles at: row at: column occupied) ifFalse:[
			^ row @ column]].
	
	^ 0 @ 0