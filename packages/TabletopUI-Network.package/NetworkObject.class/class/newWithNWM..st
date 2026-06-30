initialization
newWithNWM: networkmanager

	| inst |
	inst := self new.
	inst networkmanager: networkmanager.
	^ inst