
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Events/EventsOverviewHosted/EventsOverviewHosted.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'EventsOverviewHost.g.dart';

class EventsOverviewHost extends EzStatefulWidgetBase {
	@override
	EventsOverviewHostState createState() => EventsOverviewHostState();
}

@EzWidget()
class EventsOverviewHostState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<EventsOverviewHosted z-on:counterIncremented="onCounterIncremented" />
			<Text>Count (outside): {{ myCounter }}</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("myCounter") int _$myCounter = 0; // --> this._myCounter


	/* BOUND METHODS (16) **/
	@EzMethod("onCounterIncremented")
	void _boundOnCounterIncremented(int newCounter) {
	    this._myCounter = newCounter;
	}
}




