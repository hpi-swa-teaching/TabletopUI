testing
test03addSubclassEntry

	| sizeBefore |
	sizeBefore := self wiki subclasses size.
	self wiki addSubclass: 'Test Subclass'
	className: 'a classname'
	sections: {'a level' -> 'a description'.}.
	self assert: self wiki subclasses size equals: (sizeBefore + 1).
	self assert: self wiki subclasses last titleMorph contents equals: '> Test Subclass'