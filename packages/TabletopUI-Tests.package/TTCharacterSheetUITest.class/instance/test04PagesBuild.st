testing - construction
test04PagesBuild

	| display |
	
	display := self openDisplay.
	1 to: display maximumPageCount do: [:pageNumber | 
		self shouldnt: [display layoutPage: pageNumber] raise: Error]