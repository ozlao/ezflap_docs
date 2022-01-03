
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ZConstructor.g.dart';

class ZConstructor extends EzStatefulWidgetBase {
	@override
	ZConstructorState createState() => ZConstructorState();
}

@EzWidget()
class ZConstructorState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Text z-constructor="rich">
			<:0->
				<TextSpan>Hello ezFlap!</TextSpan>
			</:0->
		</Text>
	""";
}




