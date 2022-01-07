
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingAccessDisabledHostedWidget/TestingAccessDisabledHostedWidget.dart';
import 'package:flutter/material.dart';

part 'TestingAccessDisabledHostWidget.g.dart';

class TestingAccessDisabledHostWidget extends EzStatefulWidgetBase {
	TestingAccessDisabledHostWidget({ Key? key }) : super(key: key);

	@override
	TestingAccessDisabledHostWidgetState createState() => TestingAccessDisabledHostWidgetState();
}

@EzWidget()
class TestingAccessDisabledHostWidgetState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Hosted widget:</Text>
			<TestingAccessDisabledHostedWidget
				title="Hello World"
				z-bind:age="42"
			/>
		</Column>
	""";
}




