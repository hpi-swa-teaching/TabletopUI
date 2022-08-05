drag and drop
wantsDroppedMorph: aMorph event: anEvent

	^ (self occupied not) and: [
		aMorph isTTToken]