interactive rolls
defaultInitiativeLabelPressed

	self inputField processInput: 'roll d20 ', (self signedModifier: self initiative)