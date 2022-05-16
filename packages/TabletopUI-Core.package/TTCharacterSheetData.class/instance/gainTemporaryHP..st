health and damage
gainTemporaryHP: aNumber

	aNumber < 0 ifFalse: [self temporaryHP: self temporaryHP + aNumber]