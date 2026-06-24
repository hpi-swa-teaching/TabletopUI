display
buildContentMorph: aContentString
    
	^ TextMorph new 
		contents: (self styledText: '    ' , aContentString); 
		hResizing: #spaceFill; 
		color: self defaultTextColor;
		wrapFlag: true; 
		autoFit: true
