
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'SyntaxLate.g.dart';

class SyntaxLate extends EzStatefulWidgetBase {
	@override
	SyntaxLateState createState() => SyntaxLateState();
}

@EzWidget()
class SyntaxLateState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>Hello {{ name }}!</Text>
		</Container>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("name") late String _$name; // --> this._name


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		this._name = "ezFlap";
	}
}




