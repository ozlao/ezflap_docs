
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'CoreWidgetsEzToggleButtons.g.dart';

class CoreWidgetsEzToggleButtons extends EzStatefulWidgetBase {
	@override
	CoreWidgetsEzToggleButtonsState createState() => CoreWidgetsEzToggleButtonsState();
}

@EzWidget()
class CoreWidgetsEzToggleButtonsState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<EzToggleButtons
				z-model="statesList"
				z-on:pressed="onPressed"
			>
				<Text z-for="(state, curIdx) in statesList">
					Button {{ curIdx + 1 }}
				</Text>
			</EzToggleButtons>
			<Text>States: {{ statesList }}</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("statesList") List<bool> _$statesList = List.filled(5, false); // --> this._statesList


	/* BOUND METHODS (16) **/
	@EzMethod("onPressed")
	void _boundOnPressed(int idx) {
	    print("Pressed button #${idx + 1}");
	}
}




