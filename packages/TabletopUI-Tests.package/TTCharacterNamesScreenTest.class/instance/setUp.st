running
setUp

	self screen: TTCharacterNamesScreen new.
	self window: TTTabletopWindow new.
	self screen window: self window.
	self screen characterAdministration: self window characterAdministration.
	self characterAdministration: self screen characterAdministration