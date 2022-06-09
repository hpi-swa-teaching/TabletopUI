execution
execute: aContext
	
	^ (self left execute: aContext) + (self right execute: aContext)