accessing
partWithContentID: cid

	^ self parts
		detect: [:part | part contentID = cid]
		ifNone: [nil]