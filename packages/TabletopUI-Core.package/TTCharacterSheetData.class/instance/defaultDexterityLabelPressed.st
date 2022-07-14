interactive rolls
defaultDexterityLabelPressed

	self inputField processInput: 'roll d20 ', (self signedModifier: self dexterityModifier)