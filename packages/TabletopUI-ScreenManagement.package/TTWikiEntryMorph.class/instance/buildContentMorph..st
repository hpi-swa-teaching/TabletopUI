display
buildContentMorph: aContentString
    
	^ TextMorph new 
		contents: (self styledText: '    ' , aContentString); 
		hResizing: #spaceFill; 
		wrapFlag: true; 
		autoFit: true
