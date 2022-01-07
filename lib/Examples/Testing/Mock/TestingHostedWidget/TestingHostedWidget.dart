
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'TestingHostedWidget.g.dart';

class TestingHostedWidget extends EzStatefulWidgetBase {
	TestingHostedWidget({ Key? key }) : super(key: key);

	@override
	TestingHostedWidgetState createState() => TestingHostedWidgetState();
}

@EzWidget()
class TestingHostedWidgetState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Hello ezFlap!</Text>
		</Column>
	""";
}




