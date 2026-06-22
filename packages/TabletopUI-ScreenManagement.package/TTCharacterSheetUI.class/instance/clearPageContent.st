layout pages
clearPageContent

	self sheet submorphs copy do: [:morph |
         (self isImportant: morph) ifFalse: [
		self model removeDependent: morph.
		morph delete]].