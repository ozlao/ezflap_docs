
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'CoreWidgetsEzRangeSlider.g.dart';

class CoreWidgetsEzRangeSlider extends EzStatefulWidgetBase {
	CoreWidgetsEzRangeSlider({ Key? key }) : super(key: key);

	@override
	CoreWidgetsEzRangeSliderState createState() => CoreWidgetsEzRangeSliderState();
}

@EzWidget()
class CoreWidgetsEzRangeSliderState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<EzRangeSlider
				z-model="values"
				z-bind:min="10"
				z-bind:max="100"
				z-bind:divisions="9"
				z-on:changed="onChanged"
			/>
			<Text>Values: {{ values }}</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("values") RangeValues _$values = RangeValues(40, 80); // --> this._values


	/* BOUND METHODS (16) **/
	@EzMethod("onChanged")
	void _boundOnChanged(RangeValues rangeValues) {
	    print("Changed to: ${rangeValues}");
	}
}




