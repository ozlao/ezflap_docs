
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'SyntaxNullable.g.dart';

class SyntaxNullable extends EzStatefulWidgetBase {
	@override
	SyntaxNullableState createState() => SyntaxNullableState();
}

@EzWidget()
class SyntaxNullableState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>Hello {{ name }}!</Text>
		</Container>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("name") String? _$name; // --> this._name


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		this._name = "ezFlap";
	}
}




