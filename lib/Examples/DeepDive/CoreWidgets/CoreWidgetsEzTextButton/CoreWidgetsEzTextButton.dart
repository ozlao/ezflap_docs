
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'CoreWidgetsEzTextButton.g.dart';

class CoreWidgetsEzTextButton extends EzStatefulWidgetBase {
	@override
	CoreWidgetsEzTextButtonState createState() => CoreWidgetsEzTextButtonState();
}

@EzWidget()
class CoreWidgetsEzTextButtonState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<EzTextButton
				caption="I was pressed {{ timesList[0] }} times"
				z-on:pressed="onPressed(0)"
			/>
			
			<EzTextButton z-on:pressed="onPressed(1)">
				<Text>And I was pressed {{ timesList[1] }} times</Text>
			</EzTextButton>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("timesList") RxList<int> _$timesList = RxList.filled(2, 0); // --> this._timesList


	/* BOUND METHODS (16) **/
	@EzMethod("onPressed")
	void _boundOnPressed(int idx) {
	    this._timesList[idx]++;
	}
}




