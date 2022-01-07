
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ZKey.g.dart';

class ZKey extends EzStatefulWidgetBase {
	ZKey({ Key? key }) : super(key: key);

	@override
	ZKeyState createState() => ZKeyState();
}

@EzWidget()
class ZKeyState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Text z-key="hello">Hello ezFlap!</Text>
	""";
}




