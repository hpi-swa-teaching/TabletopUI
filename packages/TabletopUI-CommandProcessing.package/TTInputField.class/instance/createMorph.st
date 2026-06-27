toolbuilder
createMorph

	| inputMorph |

	inputMorph := PluggableTextMorphWithModel
		on: self
		text: #resetInputField
		accept: #processInput:.

	inputMorph
		position: 0@510;
		extent: 300@40;
		hResizing: #spaceFill;
		borderWidth: 1.
		
	inputMorph acceptOnCR: true.

	^ inputMorph