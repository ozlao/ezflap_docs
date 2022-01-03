
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Events/SimpleTextButton/SimpleTextButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

part 'MultipleCountersWithEvents.g.dart';

class MultipleCountersWithEvents extends EzStatefulWidgetBase {
	@override
	MultipleCountersWithEventsState createState() => MultipleCountersWithEventsState();
}

	@EzWidget()
	class MultipleCountersWithEventsState extends _EzStateBase {
		/* ZML (8) **/
		static const _ZML = """
			<Column>
				<Column z-for="(counter, idx) in countersList">
					<Text>Counter {{ idx + 1 }}: {{ counter }}</Text>
					<SimpleTextButton caption="Increment" z-on:pressed="onButtonPress(idx)" />
				</Column>
			</Column>
		""";


		/* BOUND FIELDS (11) **/
		@EzField("countersList") RxList<int> _$countersList = RxList.filled(5, 0);
		// --> this._countersList


		/* BOUND METHODS (16) **/
		@EzMethod("onButtonPress")
		void _boundOnButtonPress(int counterIdx) {
		    this._countersList[counterIdx]++;
		}
	}




