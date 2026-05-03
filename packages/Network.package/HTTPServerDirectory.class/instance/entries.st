file directory
entries 
	| answer ftpEntries |
	answer := HTTPSocket httpGetDocument: self dirListUrl.
	answer isString
		ifTrue: [^self error: 'Listing failed: ' , answer]
		ifFalse: [answer := answer content].
	answer first = $< ifTrue:
		[(answer first: 5) =  '<?xml' ifTrue:
			[(self environment classNamed: #XMLDOMParser) ifNotNil:
				[:parserClass | ^ self parseFTPEntriesFromXML: (parserClass parseDocumentFrom: answer readStream useNamespaces: true)]].
		 self error: 'Listing failed: ' , answer].
	ftpEntries := answer lines.
	^ ftpEntries 
		collect:[:ftpEntry | self class parseFTPEntry: ftpEntry]
		thenSelect: [:entry | entry notNil]