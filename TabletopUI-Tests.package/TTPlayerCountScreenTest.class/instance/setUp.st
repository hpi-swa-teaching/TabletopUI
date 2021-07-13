running
setUp

	self characterAdministration: TTCharacterAdministration new.
	self screen: TTPlayerCountScreen new.
	self screen characterAdministration: self characterAdministration.