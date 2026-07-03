tasks
broadcastNewMap: aForm for: aName

	| params |
	params := Dictionary new.
	params at: 'name' put: aName.
	params at: 'image' put: (TTSerializer serializeImage: aForm).
	self networkFacade send: #addImage: to: 'mapEcho' with: params