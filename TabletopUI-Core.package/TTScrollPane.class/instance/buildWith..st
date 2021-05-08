toolbuilder
buildWith: builder
	
	^ builder pluggableScrollPaneSpec new
		morph: self map;
		hScrollBarPolicy: #always;
		vScrollBarPolicy: #always;
		borderWidth: 0
	