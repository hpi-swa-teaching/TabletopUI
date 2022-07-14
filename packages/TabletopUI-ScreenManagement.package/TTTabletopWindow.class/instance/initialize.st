initialization
initialize
	
	super initialize.
	
	self 
		characterAdministration: TTCharacterAdministration new;
		subWindowManager: TTSubWindowManager new;
		openPlayerCountScreen