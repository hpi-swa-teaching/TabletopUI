initialization
initialize
	
	super initialize.
	
	self 
		contents: {};
		characterAdministration: TTCharacterAdministration new;
		connectionRegistry: Dictionary new.