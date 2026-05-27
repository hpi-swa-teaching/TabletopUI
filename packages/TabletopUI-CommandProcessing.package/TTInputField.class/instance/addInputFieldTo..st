toolbuilder
addInputFieldTo: aTransformationMorph

	| inputMorph |

	inputMorph := PluggableTextMorphWithModel
		on: self
		text: #resetInputField
		accept: #processInput:.

	inputMorph
		position: 0@510;
		extent: 300@40;
		hResizing: #spaceFill;
		color: Color white;
		borderWidth: 1;
		borderColor: Color black.
		
	inputMorph acceptOnCR: true.
	"inputMorph askBeforeDiscardingEdits: false."
	"inputMorph hideScrollBarsIndefinitely."

	aTransformationMorph addMorphFront: inputMorph.

	^ inputMorph