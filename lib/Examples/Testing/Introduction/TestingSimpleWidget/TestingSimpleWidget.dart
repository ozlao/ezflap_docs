
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'TestingSimpleWidget.g.dart';

class TestingSimpleWidget extends EzStatefulWidgetBase {
	TestingSimpleWidget({ Key? key }) : super(key: key);

	@override
	TestingSimpleWidgetState createState() => TestingSimpleWidgetState();
}

@EzWidget()
class TestingSimpleWidgetState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>Hello ezFlap!</Text>
		</Container>
	""";
}




