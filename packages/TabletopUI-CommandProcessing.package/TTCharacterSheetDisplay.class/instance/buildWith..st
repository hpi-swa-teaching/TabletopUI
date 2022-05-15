as yet unclassified
buildWith: aToolBuilder
	^ aToolBuilder
		build:
			(aToolBuilder pluggableWindowSpec new
				extent: self defaultExtent;
				label: 'Character Sheet';
				children:
						(OrderedCollection new
							add:
								((self attributeListSpec: aToolBuilder)
									frame: self attributeListFrame;
									yourself);
									yourself);
				yourself)