
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'CoreWidgetsEzSlider.g.dart';

class CoreWidgetsEzSlider extends EzStatefulWidgetBase {
	CoreWidgetsEzSlider({ Key? key }) : super(key: key);

	@override
	CoreWidgetsEzSliderState createState() => CoreWidgetsEzSliderState();
}

@EzWidget()
class CoreWidgetsEzSliderState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<EzSlider
				z-model="value"
				z-bind:min="10"
				z-bind:max="100"
				z-bind:divisions="9"
				z-on:changed="onChanged"
			/>
			<Text>Value: {{ value }}</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("value") double _$value = 40; // --> this._value


	/* BOUND METHODS (16) **/
	@EzMethod("onChanged")
	void _boundOnChanged(double newValue) {
	    print("Changed to: ${newValue}");
	}
}




