as yet unclassified
loadFormOfName: aString

	^ Form fromFileNamed: (self baseDirectory fullNameFor: self imageDirectoryName , aString)