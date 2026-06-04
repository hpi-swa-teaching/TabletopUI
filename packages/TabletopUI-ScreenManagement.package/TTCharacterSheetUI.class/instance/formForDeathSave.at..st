forms
formForDeathSave: aString at: aNumber

	^ (TTImageLoader loadFormFromFileNamed: aString , aNumber asString , '.png')
		scaledToSize: self buttonRowExtent