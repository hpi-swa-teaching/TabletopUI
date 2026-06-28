accessing
referenceManager

	referenceManager ifNil: [referenceManager := TTReferenceManager new].
	^ referenceManager
