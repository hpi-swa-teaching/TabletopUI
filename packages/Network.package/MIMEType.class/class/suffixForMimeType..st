accessing
suffixForMimeType: mimeType
	^self defaultSuffixes at: mimeType ifAbsent: [mimeType sub]