toolbuilder
buildWith: aMorphicToolbuilder

	^ aMorphicToolbuilder build: (aMorphicToolbuilder pluggableWindowSpec new
		model: self;
		label: 'spacy';
		extent: 800@500;
		children: #contents;
		yourself)