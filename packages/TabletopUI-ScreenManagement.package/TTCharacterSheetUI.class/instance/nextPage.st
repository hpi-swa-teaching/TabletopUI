layout pages
nextPage
	
	self currentPage: self currentPage \\ self maximumPageCount + 1.
	self layoutPage: self currentPage.