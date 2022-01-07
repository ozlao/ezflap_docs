
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'ZBind4.g.dart';

class ZBind4 extends EzStatefulWidgetBase {
	ZBind4({ Key? key }) : super(key: key);

	@override
	ZBind4State createState() => ZBind4State();
}

@EzWidget()
class ZBind4State extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<TextButton z-for="(counter, idx) in countersList" z-bind:onPressed="getPressedFunc(idx)">
				<Text>Pressed {{ countersList[idx] }} times!</Text>
			</TextButton>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("countersList") RxList<int> _$countersList = RxList<int>.filled(20, 0);
	// --> this._countersList


	/* BOUND METHODS (16) **/
	@EzMethod("getPressedFunc")
	void Function() _boundGetPressedFunc(int idx) {
		return () => this._countersList[idx]++;
	}
}





