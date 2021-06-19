as yet unclassified
test01MorphOrToken

	| morph |
	
	morph := Morph new.
	
	self deny: morph equals: token.
	self assert: morph isTTToken equals: false.
	self assert: token isTTToken equals: true