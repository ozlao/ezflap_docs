
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'CoreWidgetsEzElevatedButton.g.dart';

class CoreWidgetsEzElevatedButton extends EzStatefulWidgetBase {
	@override
	CoreWidgetsEzElevatedButtonState createState() => CoreWidgetsEzElevatedButtonState();
}

@EzWidget()
class CoreWidgetsEzElevatedButtonState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<EzElevatedButton
				caption="I was pressed {{ timesList[0] }} times"
				z-on:pressed="onPressed(0)"
			/>
			
			
			<EzElevatedButton z-on:pressed="onPressed(1)">
				<Text>And I was pressed {{ timesList[1] }} times</Text>
			</EzElevatedButton>
			
			
			<EzElevatedButton
				caption="Yet I was pressed {{ timesList[2] }} times"
				z-on:pressed="onPressed(2)"
			>
				<icon->
					<Icon z-bind:0="Icons.card_giftcard" />
				</icon->
			</EzElevatedButton>
			
			
			<EzElevatedButton z-on:pressed="onPressed(3)">
				<icon->
					<Icon z-bind:0="Icons.charging_station" />
				</icon->
				<Text>But I was pressed {{ timesList[3] }} times</Text>
			</EzElevatedButton>
			
			
			<EzElevatedButton z-on:pressed="onPressed(4)">
				<icon->
					<Icon z-bind:0="Icons.local_taxi" />
				</icon->
				<label->
					<Text>Thank god I'm the last example... {{ timesList[4] }} times</Text>
				</label->
			</EzElevatedButton>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("timesList") RxList<int> _$timesList = RxList.filled(5, 0); // --> this._timesList


	/* BOUND METHODS (16) **/
	@EzMethod("onPressed")
	void _boundOnPressed(int idx) {
	    this._timesList[idx]++;
	}
}




