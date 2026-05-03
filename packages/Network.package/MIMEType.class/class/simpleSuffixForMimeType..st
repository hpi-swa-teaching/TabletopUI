accessing
simpleSuffixForMimeType: mimeType
	^(self defaultSuffixes at: mimeType ifAbsent: [self  huntForDashAndRemove: mimeType sub]) asSymbol