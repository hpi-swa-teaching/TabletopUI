layout pages
clearPageContent

	self sheet submorphs copy do: [:m |
        m == arrow ifFalse: [m delete]].