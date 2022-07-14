toolbuilder
buildWith: aMorphicToolbuilder

	^ aMorphicToolbuilder build: (aMorphicToolbuilder pluggableWindowSpec new
		model: self;
		closeAction: #onClose;
		label: 'ROLL21';
		extent: self startingSize;
		children: #contents;
		yourself)