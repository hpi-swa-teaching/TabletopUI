input handling
on: aModel get: aGetSymbol set: aSetSymbol onForm: anOnForm offForm: anOffForm

	self
		model: aModel;
		getSelector: aGetSymbol;
		setSelector: aSetSymbol;
		onForm: anOnForm;
		offForm: anOffForm;
		state: (self model perform: self getSelector);
		setImage.
	aModel addDependent: self