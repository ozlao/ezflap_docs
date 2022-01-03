
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingHostedWidgetForRef/TestingHostedWidgetForRef.dart';

class Mock_TestingHostedWidgetForRefState extends MockWidgetStateBase
	implements ITestingHostedWidgetForRefState
{
	@override
	String getCurrentMessage() {
		return "Alternative text!";
	}
}


