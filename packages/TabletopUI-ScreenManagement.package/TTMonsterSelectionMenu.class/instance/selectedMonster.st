accessing
selectedMonster

	self characterAdministration monsters isEmpty ifTrue: [^ nil].
	^ self characterAdministration monsters at: self selectedIndex