
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'EventsOverviewHosted.g.dart';

class EventsOverviewHosted extends EzStatefulWidgetBase {
	EventsOverviewHosted({ Key? key }) : super(key: key);

	@override
	EventsOverviewHostedState createState() => EventsOverviewHostedState();
}

	@EzWidget()
	class EventsOverviewHostedState extends _EzStateBase {
		/* EVENT EMITTERS (4) **/
		@EzEmit("counterIncremented") late void Function(int newCounter) _$emit_counterIncremented;
		// --> this._emit_counterIncremented


		/* ZML (8) **/
		static const _ZML = """
			<Column>
				<Text>Count (inside): {{ counter }}</Text>
				<TextButton z-bind:onPressed="onPressed">
					<Text>Increment</Text>
				</TextButton>
			</Column>
		""";


		/* BOUND FIELDS (11) **/
		@EzField("counter") int _$counter = 0; // --> this._counter


		/* BOUND METHODS (16) **/
		@EzMethod("onPressed")
		void _boundOnPressed() {
		    this._counter++;
		    this._emit_counterIncremented(this._counter);
		}
	}




