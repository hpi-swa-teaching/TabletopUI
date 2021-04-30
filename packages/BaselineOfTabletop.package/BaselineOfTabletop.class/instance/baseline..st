as yet unclassified
baseline: spec
	"Todo: uncomment and adapt to your project"
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'TabletopUI-Core';
				package: 'TabletopUI-Tests' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('TabletopUI-Core');
				group: 'tests' with: #('TabletopUI-Tests')];
				yourself