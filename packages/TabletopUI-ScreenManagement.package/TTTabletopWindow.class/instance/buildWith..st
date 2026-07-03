toolbuilder
buildWith: aMorphicToolbuilder

	^ aMorphicToolbuilder build: (aMorphicToolbuilder pluggableWindowSpec new
		model: self;
		closeAction: #onClose;
		label: self windowLabel;
		extent: self startingSize;
		children: #contents;
		yourself)