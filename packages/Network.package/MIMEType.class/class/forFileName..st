instance creation
forFileName: fileName
	| ext type |
	ext := FileDirectory extensionFor: fileName.
	(ext = '' and: [SmalltalkImage current platformName = 'Mac OS'])
		 ifTrue: [type := (FileDirectory default getMacFileTypeAndCreator: fileName) at: 1.
			^self forExtension: type].
	^self forExtension: (FileDirectory extensionFor: fileName)