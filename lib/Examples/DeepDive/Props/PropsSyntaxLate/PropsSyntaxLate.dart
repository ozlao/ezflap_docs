
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'PropsSyntaxLate.g.dart';

class PropsSyntaxLate extends EzStatefulWidgetBase {
	@override
	PropsSyntaxLateState createState() => PropsSyntaxLateState();
}

@EzWidget()
class PropsSyntaxLateState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("title") late String _$prop_title; // --> this._prop_title


	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>{{ title }}</Text>
		</Container>
	""";
}




