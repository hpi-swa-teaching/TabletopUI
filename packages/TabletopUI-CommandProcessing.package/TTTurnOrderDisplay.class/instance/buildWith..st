toolbuilder
buildWith: aToolBuilder

	^ aToolBuilder
		build:
			(aToolBuilder pluggableWindowSpec new
				model: self fightEvaluator;
				extent: self defaultExtent;
				label: 'Turn Order';
				children:
						(OrderedCollection new
								add:
										((self listSpec: aToolBuilder)
												frame: self listFrame;
												yourself);
								add:
										((self buttonSpec: aToolBuilder)
												frame: self buttonFrame;
												yourself);
								yourself);
				yourself)