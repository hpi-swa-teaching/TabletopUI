toolbuilder
buildWith: aToolBuilder

	^ aToolBuilder
		build:
			(aToolBuilder pluggableWindowSpec new
				extent: self defaultExtent;
				model: self;
				label: self windowLabel;
				children:
						(OrderedCollection new
							add:
								(self
									readOnlyTextSpec: aToolBuilder
									getText: #titleText
									frame: (LayoutFrame fractions: (0 @ 0 rect: 0.5 @ 0.16)));

							add:
								((self abilityRowSpec: aToolBuilder)
									frame: (LayoutFrame fractions: (0 @ 0.16 rect: 0.5 @ 0.32));
									yourself);

							add:
								(self
									readOnlyTextSpec: aToolBuilder
									getText: #coreStatsText
									frame: (LayoutFrame fractions: (0 @ 0.32 rect: 0.5 @ 0.92)));

							add:
								(self
									readOnlyTextSpec: aToolBuilder
									getText: #rightColumnText
									frame: (LayoutFrame fractions: (0.5 @ 0 rect: 1 @ 0.92)));

							add:
								(aToolBuilder pluggableButtonSpec new
									model: self;
									label: 'Add Token';
									action: #addToken;
									frame: (LayoutFrame fractions: (0.35 @ 0.92 rect: 0.65 @ 1));
									yourself);
							yourself);
				yourself)
