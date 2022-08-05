token placement
findFreeTile

	self tiles indicesDo: [:aRow :aColumn | 
		((self tiles at: aRow at: aColumn) occupied) ifFalse: [
			^ aRow @ aColumn]].
	
	^ 0 @ 0