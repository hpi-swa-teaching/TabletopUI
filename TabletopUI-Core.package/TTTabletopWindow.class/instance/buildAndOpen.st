toolbuilder
buildAndOpen
	
	self spec: self build.
	self builder open: self spec