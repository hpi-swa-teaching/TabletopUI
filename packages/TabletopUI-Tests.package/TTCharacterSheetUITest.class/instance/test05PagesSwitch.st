testing - construction
test05PagesSwitch

	| display |
	
	display := self openDisplay.
	#(2 3 1 4 3 1 2) do: [:pageNumber |
		self shouldnt: [display layoutPage: pageNumber] raise: Error]