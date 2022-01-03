
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'TestingHostedWidgetForRef.g.dart';

class TestingHostedWidgetForRef extends EzStatefulWidgetBase {
	@override
	TestingHostedWidgetForRefState createState() => TestingHostedWidgetForRefState();
}

abstract class ITestingHostedWidgetForRefState {
	String getCurrentMessage();
}

@EzWidget()
class TestingHostedWidgetForRefState extends _EzStateBase
	implements ITestingHostedWidgetForRefState
{
	/* PUBLIC METHODS (5) **/
	String getCurrentMessage() {
		return this._curMessage;
	}


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>{{ curMessage }}</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("curMessage") String _$curMessage = "Hello ezFlap!"; // --> this._curMessage
}




