
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'CoreWidgetsEzTextFormField.g.dart';

class CoreWidgetsEzTextFormField extends EzStatefulWidgetBase {
	CoreWidgetsEzTextFormField({ Key? key }) : super(key: key);

	@override
	CoreWidgetsEzTextFormFieldState createState() => CoreWidgetsEzTextFormFieldState();
}

@EzWidget()
class CoreWidgetsEzTextFormFieldState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<EzTextFormField z-model="myString" />
			<Text>Typed string: {{ myString }}</Text>

			<EzTextFormField z-model="myInt" />
			<Text>Typed int: {{ myInt }}</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("myString") String? _$myString; // --> this._myString
	@EzField("myInt") int? _$myInt; // --> this._myInt
}




