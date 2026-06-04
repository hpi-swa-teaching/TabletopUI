build
buildRightColumnIn: aMorph

	self addEditableField: #personalityTraits
		sized: 150 @ 70
		at: 20 @ 20
		in: aMorph.
	self addEditableField: #ideals
		sized: 150 @ 70 
		at: 20 @ 115
		in: aMorph.
	self addEditableField: #bonds
		sized: 150 @ 70
		at: 20 @ 210
		in: aMorph.
	self addEditableField: #flaws
		sized: 150 @ 70
		at: 20 @ 305
		in: aMorph.
	self addEditableField: #appearance
		sized: 150 @ 155
		at: 20 @ 400
		in: aMorph.
	self addEditableField: #treasure
		sized: 150 @ 155
		at: 20 @ 588
		in: aMorph.	