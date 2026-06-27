layout pages
isImportant: aMorph

	^ (aMorph == self nextPageButton) or: [aMorph == self closeButton]