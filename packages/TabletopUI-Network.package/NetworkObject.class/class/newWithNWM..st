as yet unclassified
newWithNWM: networkmanager

	| inst |
	inst := self new.
	inst networkManager: networkmanager.
	^ inst