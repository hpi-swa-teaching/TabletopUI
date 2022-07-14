health and damage
gainTemporaryHPInput: aText

	self gainTemporaryHP: aText asNumber.
	self changed: #temporaryHP.
	self closeDialog