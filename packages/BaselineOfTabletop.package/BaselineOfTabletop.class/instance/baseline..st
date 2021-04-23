as yet unclassified
baseline: spec
	"Todo: uncomment and adapt to your project"
	"<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Counter-Core';
				package: 'Counter-Tests' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('Counter-Core');
				group: 'tests' with: #('Counter-Tests')];
				yourself"