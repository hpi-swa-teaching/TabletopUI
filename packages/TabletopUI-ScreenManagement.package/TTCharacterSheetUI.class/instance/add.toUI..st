primitives
add: aMorph toUI: anImageMorph

	self model addDependent: aMorph.
	anImageMorph addMorph: aMorph
