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
								(aToolBuilder pluggableTextSpec new
									model: self;
									getText: #titleText;
									color: #backgroundColor;
									indicateUnacceptedChanges: false;
									frame: (LayoutFrame fractions: (0 @ 0 rect: 0.5 @ 0.16));
									readOnly: true;
									yourself);

							add:
								((self abilityRowSpec: aToolBuilder)
									frame: (LayoutFrame fractions: (0 @ 0.16 rect: 0.5 @ 0.32));
									yourself);

							add:
								(aToolBuilder pluggableTextSpec new
									model: self;
									getText: #coreStatsText;
									color: #backgroundColor;
									indicateUnacceptedChanges: false;
									frame: (LayoutFrame fractions: (0 @ 0.32 rect: 0.5 @ 0.92));
									readOnly: true;
									yourself);

							add:
								(aToolBuilder pluggableTextSpec new
									model: self;
									getText: #rightColumnText;
									color: #backgroundColor;
									indicateUnacceptedChanges: false;
									frame: (LayoutFrame fractions: (0.5 @ 0 rect: 1 @ 0.92));
									readOnly: true;
									yourself);

							add:
								(aToolBuilder pluggableButtonSpec new
									model: self;
									label: 'Add Token';
									action: #addToken;
									frame: (LayoutFrame fractions: (0.35 @ 0.92 rect: 0.65 @ 1));
									yourself);
							yourself);
				yourself)
