interactive rolls
initiativeLabelPressed

	self inputField processInput: 'roll d20 ', (self signedModifier: self initiative)