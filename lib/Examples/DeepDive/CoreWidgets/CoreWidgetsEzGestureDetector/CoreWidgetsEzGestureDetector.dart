
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'CoreWidgetsEzGestureDetector.g.dart';

class CoreWidgetsEzGestureDetector extends EzStatefulWidgetBase {
	@override
	CoreWidgetsEzGestureDetectorState createState() => CoreWidgetsEzGestureDetectorState();
}

@EzWidget()
class CoreWidgetsEzGestureDetectorState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<EzGestureDetector z-on:tap="onTapped()">
				<Text>I was tapped {{ counter }} times</Text>
			</EzGestureDetector>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("counter") int _$counter = 0; // --> this._counter


	/* BOUND METHODS (16) **/
	@EzMethod("onTapped")
	void _boundOnTapped() {
	    this._counter++;
	}
}




