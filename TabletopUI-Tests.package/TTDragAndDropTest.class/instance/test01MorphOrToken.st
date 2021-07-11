as yet unclassified
test01MorphOrToken

	| morph |
	
	morph := Morph new.
	
	self 
		deny: morph equals: token;
		assert: morph isTTToken equals: false;
		assert: token isTTToken equals: true