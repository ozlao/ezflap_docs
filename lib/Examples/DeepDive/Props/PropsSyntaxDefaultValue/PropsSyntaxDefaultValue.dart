
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'PropsSyntaxDefaultValue.g.dart';

class PropsSyntaxDefaultValue extends EzStatefulWidgetBase {
	PropsSyntaxDefaultValue({ Key? key }) : super(key: key);

	@override
	PropsSyntaxDefaultValueState createState() => PropsSyntaxDefaultValueState();
}

@EzWidget()
class PropsSyntaxDefaultValueState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("title") String _$prop_title = "Default Title!"; // --> this._prop_title


	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>{{ title }}</Text>
		</Container>
	""";
}




