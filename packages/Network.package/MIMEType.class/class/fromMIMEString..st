instance creation
fromMIMEString: mimeString
	"Examples:
		MIMEType fromMIMEString: 'text/plain'
		MIMEType fromMIMEString: 'text/plain;charset=utf8'
		MIMEType fromMIMEString: 'Message/Partial; number=2; total=3; id=""oc=jpbe0M2Yt4s@thumper.bellcore.com""'"

	| idx main sub parameters |
	parameters := OrderedDictionary new.
	idx := mimeString indexOf: $/.
	idx = 0
		ifTrue: [self error: 'Illegal mime type string "' , mimeString , '".'].
	main := mimeString copyFrom: 1 to: idx-1.
	idx := mimeString indexOf: $; startingAt: idx+1.
	idx = 0
		ifTrue: [
			sub := mimeString copyFrom: main size + 2 to: mimeString size]
		ifFalse: [ | pos key val |
			sub := mimeString copyFrom: main size + 2 to: idx-1.
			pos := idx.
			[pos < mimeString size] whileTrue: [
				idx := idx + 1. "Skip $;"
				[(mimeString at: idx) isSeparator] whileTrue: [idx := idx+1].
				pos := mimeString indexOf: $= startingAt: idx.
				key := mimeString copyFrom: idx to: pos-1.
				idx := pos+1.
				(mimeString at: idx) = $"
					ifFalse: ["token"
						pos := mimeString indexOf: $; startingAt: idx.
						pos = 0 ifTrue: [pos := mimeString size + 1].
						val := mimeString copyFrom: idx to: pos-1.
						idx := pos]
					ifTrue: ["quoted-string"
						idx := idx+1.
						pos := mimeString indexOf: $" startingAt: idx.
						pos = 0 ifTrue: [self error: 'Illegal quoted-string in mime type string "' , mimeString , '".'].
						val := mimeString copyFrom: idx to: pos-1.
						idx := pos+1].
				parameters at: key put: val]].
	 ^self
		main: main
		sub: sub
		parameters: parameters
