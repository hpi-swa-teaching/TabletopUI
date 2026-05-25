layout pages
clearPageContent

	self sheet submorphs copy do: [:m |
        m == arrow ifFalse: [
		self model removeDependent: m.
		m delete]].