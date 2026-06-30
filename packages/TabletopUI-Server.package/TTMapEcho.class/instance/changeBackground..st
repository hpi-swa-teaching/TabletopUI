messages
changeBackground: params
	
	Transcript show: 'Heja BVB'; cr.
	self networkFacade send: #changeBackground: to: 'mapSelector' with: params