initialize-release
initialize

	super initialize.

	self
		contents: {};
		characterAdministration: TTCharacterAdministration new;
		setAsDefaultRole.