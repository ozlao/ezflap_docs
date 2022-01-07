
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'MultipleCountersWithoutEvents.g.dart';

class MultipleCountersWithoutEvents extends EzStatefulWidgetBase {
	MultipleCountersWithoutEvents({ Key? key }) : super(key: key);

	@override
	MultipleCountersWithoutEventsState createState() => MultipleCountersWithoutEventsState();
}

	@EzWidget()
	class MultipleCountersWithoutEventsState extends _EzStateBase {
		/* ZML (8) **/
		static const _ZML = """
			<Column>
				<Column z-for="(counter, idx) in countersList">
					<Text>Counter {{ idx + 1 }}: {{ counter }}</Text>
					<TextButton z-bind:onPressed="getIncrementFunction(idx)">
						<Text>Increment</Text>
					</TextButton>
				</Column>
			</Column>
		""";


		/* BOUND FIELDS (11) **/
		@EzField("countersList") RxList<int> _$countersList = RxList.filled(5, 0);
		// --> this._countersList


		/* BOUND METHODS (16) **/
		@EzMethod("getIncrementFunction")
		void Function() _boundGetIncrementFunction(int counterIdx) {
		    return () => this._countersList[counterIdx]++;
		}
	}




