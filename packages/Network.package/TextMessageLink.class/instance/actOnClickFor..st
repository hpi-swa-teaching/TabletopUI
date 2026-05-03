acting
actOnClickFor: anEvent
 
	| action |
	self flag: #forLater. "ct: connect with FileServices"
	action := Project uiManager chooseOptionFromLabeledValues:
		(OrderedDictionary new
			at: (self document containsViewableImage
					ifTrue: ['view this image attachment' translated]
					ifFalse: ['view this attachment' translated])
				put: #view;
			at: 'save this attachment' translated
				put: #save;
			yourself).
	action ifNotNil: [self document perform: action].
	^ true