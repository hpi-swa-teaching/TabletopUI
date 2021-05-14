toolbuilder
addChildren: aDictionary to: aPluggablePanelSpec

	aDictionary do:[:anAssociation|
		| rectangle action widgetSpec |
		rectangle := anAssociation key.
		action := anAssociation value.
		widgetSpec := action value.
		widgetSpec ifNotNil:[
			widgetSpec frame: rectangle.
			aPluggablePanelSpec children add: widgetSpec]].