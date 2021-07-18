testing
test01WantsToBeDroppedInto

	| morph |

	morph := Morph new.
	
	self 
		assert: (self token wantsToBeDroppedInto: self tile);
		deny: (self token wantsToBeDroppedInto: morph)