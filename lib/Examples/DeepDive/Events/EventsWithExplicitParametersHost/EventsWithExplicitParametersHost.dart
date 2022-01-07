
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Events/EventsOverviewHosted/EventsOverviewHosted.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'EventsWithExplicitParametersHost.g.dart';

class EventsWithExplicitParametersHost extends EzStatefulWidgetBase {
	EventsWithExplicitParametersHost({ Key? key }) : super(key: key);

	@override
	EventsWithExplicitParametersHostState createState() => EventsWithExplicitParametersHostState();
}

@EzWidget()
class EventsWithExplicitParametersHostState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<EventsOverviewHosted z-on:counterIncremented= "onCounterIncremented()" />
			
			<Text>The counter was incremented {{ timesIncremented }} times.</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("timesIncremented") int _$timesIncremented = 0; // --> this._timesIncremented


	/* BOUND METHODS (16) **/
	@EzMethod("onCounterIncremented")
	void _boundOnCounterIncremented() {
	    this._timesIncremented++;
	}
}




