as yet unclassified
buildWithBuilder: aMorphicToolBuilder children: aDictionary

	| panelSpec |
	panelSpec := aMorphicToolBuilder pluggablePanelSpec new
		model: self;
		children: OrderedCollection new.
		
	aDictionary do:[:assoc|
		| rect action widgetSpec |
		rect := assoc key.
		action := assoc value.
		widgetSpec := action value.
		widgetSpec ifNotNil:[
			widgetSpec frame: rect.
			panelSpec children add: widgetSpec]].
	
	^panelSpec