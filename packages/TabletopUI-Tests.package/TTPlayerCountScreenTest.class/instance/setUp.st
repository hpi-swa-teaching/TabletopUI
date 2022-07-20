running
setUp
	
	self screen: TTPlayerCountScreen new.
	self window: TTTabletopWindow new.
	self screen window: self window.
	self screen characterAdministration: self window characterAdministration.
	self characterAdministration: self window characterAdministration