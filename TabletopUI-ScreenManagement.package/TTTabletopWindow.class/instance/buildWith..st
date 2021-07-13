toolbuilder
buildWith: aMorphicToolbuilder

	^ aMorphicToolbuilder build: (aMorphicToolbuilder pluggableWindowSpec new
		model: self;
		label: 'ROLL21';
		extent: self startingSize;
		children: #contents;
		yourself)