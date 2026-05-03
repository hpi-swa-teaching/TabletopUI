misc
parseFTPEntriesFromXML: anXMLDocument
	| entries |
	entries := OrderedCollection new.
	anXMLDocument
		tagsNamed: #tr
		ifReceiverDoAndRecurse:
			[:node| | ec |
			((ec := node elementsAndContents) size = 4
			and: [((ec := ec asArray) allSatisfy: [:n| n isTag])
			and: [((ec collect: [:n| n attributeAt: 'class']) sameElements: #('n' 'm' 's' 't'))]]) ifTrue:
				[[:n :m :s :t| | modificationString nameString |
				  (n isTag
				   and: [(modificationString := m string) size > 12 "YYYYMMDDHHSS"
				   and: [modificationString first isDigit]]) ifTrue:
					[nameString := n attributeAt: 'href'.
					 entries addLast:
						(t string = 'Directory' "is-a-directory flag"
							ifTrue:
								[DirectoryEntryDirectory
									directory: self
									name: nameString "file name"
									creationTime: nil
									modificationTime: modificationString asDateAndTime "modification time"
									fileSize: nil]
							ifFalse:
								[DirectoryEntryFile
									directory: self
									name: nameString "file name"
									creationTime: nil
									modificationTime: modificationString asDateAndTime "modification time"
									fileSize: (self fileSizeFromString: s string)])]] valueWithArguments: (ec collect: [:element| element elementsAndContents first])]].
	^entries