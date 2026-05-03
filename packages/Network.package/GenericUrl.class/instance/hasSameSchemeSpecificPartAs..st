comparing
hasSameSchemeSpecificPartAs: anotherUrl
			
	self locator = anotherUrl locator ifFalse: [^ false].
	^ true