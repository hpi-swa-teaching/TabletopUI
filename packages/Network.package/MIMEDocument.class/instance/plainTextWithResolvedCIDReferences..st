private
plainTextWithResolvedCIDReferences: shouldPreferRichText
	"RFC2387/RFC2392"

	| nextIndex lastIndex |
	nextIndex := content findString: '[cid:' startingAt: (lastIndex := 1).
	nextIndex = 0 ifTrue: [^ content].
	^ Text new: content size * 11 // 10 "+10%" streamContents: [:stream |
		| cid |
		[stream next: nextIndex - lastIndex putAll: content startingAt: lastIndex.
		nextIndex := content indexOf: $] startingAt: (lastIndex := nextIndex + 1).
		cid := content copyFrom: lastIndex + 4 "'cid:' size" to: nextIndex - 1.
		(MIMEContentRequest signal: cid)
			ifNotNil: [:inlineDocument | stream nextPutAll: (inlineDocument bodyTextFormatted: shouldPreferRichText)]
			ifNil: [stream nextPutAll: '[cid:'; nextPutAll: cid; nextPut: $]].
		(nextIndex := content findString: '[cid:' startingAt: (lastIndex := nextIndex + 1)) > 0]
			whileTrue.
		stream next: content size - lastIndex + 1 putAll: content startingAt: lastIndex]