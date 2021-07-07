toolbuilder
buildWith: aMorphicToolbuilder

	^ aMorphicToolbuilder build: (aMorphicToolbuilder pluggableWindowSpec new
		model: self;
		label: 'ROLL21';
		extent: 1000@600;
		children: #contents;
		yourself)