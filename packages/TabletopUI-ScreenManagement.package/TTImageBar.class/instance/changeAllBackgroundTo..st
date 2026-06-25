background editing
changeAllBackgroundTo: aNumber

	| params |
	params := Dictionary new.
	params at: 'idx' put: aNumber.
	
	self networkManager send: #changeBackground: to: 'mapSelector' with: params