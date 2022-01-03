
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingHostedWidget/TestingHostedWidget.dart';
import 'package:flutter/material.dart';

part 'TestingHostWidget.g.dart';

class TestingHostWidget extends EzStatefulWidgetBase {
	@override
	TestingHostWidgetState createState() => TestingHostWidgetState();
}

@EzWidget()
class TestingHostWidgetState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Hosted widget:</Text>
			<TestingHostedWidget />
		</Column>
	""";
}




