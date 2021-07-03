toolbuilder
buildWith: aMorphicToolbuilder

	^ aMorphicToolbuilder build: (aMorphicToolbuilder pluggableWindowSpec new
		model: self;
		label: 'ROLL21';
		extent: 1200@750;
		children: #contents;
		yourself)