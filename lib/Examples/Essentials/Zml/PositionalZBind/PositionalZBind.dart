
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'PositionalZBind.g.dart';

class PositionalZBind extends EzStatefulWidgetBase {
	PositionalZBind({ Key? key }) : super(key: key);

	@override
	PositionalZBindState createState() => PositionalZBindState();
}

@EzWidget()
class PositionalZBindState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Text z-bind:0="'Hello ezFlap!'" />
	""";
}




