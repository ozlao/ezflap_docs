
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'CoreWidgetsEzTextField.g.dart';

class CoreWidgetsEzTextField extends EzStatefulWidgetBase {
	@override
	CoreWidgetsEzTextFieldState createState() => CoreWidgetsEzTextFieldState();
}

@EzWidget()
class CoreWidgetsEzTextFieldState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<EzTextField z-model="myString" />
			<Text>Typed string: {{ myString }}</Text>

			<EzTextField z-model="myInt" />
			<Text>Typed int: {{ myInt }}</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("myString") String? _$myString; // --> this._myString
	@EzField("myInt") int? _$myInt; // --> this._myInt
}




