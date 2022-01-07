
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ModelsOverviewEzTextField.g.dart';

class ModelsOverviewEzTextField extends EzStatefulWidgetBase {
	ModelsOverviewEzTextField({ Key? key }) : super(key: key);

	@override
	ModelsOverviewEzTextFieldState createState() => ModelsOverviewEzTextFieldState();
}

@EzWidget()
class ModelsOverviewEzTextFieldState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<EzTextField z-model="myText" />
			<Text>You typed: {{ myText }}</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("myText") String _$myText = ""; // --> this._myText
}




