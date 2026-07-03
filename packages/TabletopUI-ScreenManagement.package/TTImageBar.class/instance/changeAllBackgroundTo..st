background editing
changeAllBackgroundTo: aNumber

	| params |
	params := Dictionary new.
	params at: 'idx' put: aNumber.
	
	self networkFacade send: #changeBackground: to: 'mapEcho' with: params