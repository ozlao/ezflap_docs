
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingHostWidgetWithRef/TestingHostWidgetWithRef.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingHostedWidgetForRef/TestingHostedWidgetForRef.dart';
import 'package:flutter_test/flutter_test.dart';

class Mock_TestingHostedWidgetForRefState extends MockWidgetStateBase
	implements ITestingHostedWidgetForRefState
{
	@override
	String getCurrentMessage() {
		return "Alternative text!";
	}
}

void main() {
	testWidgets("TestingHostWidgetWithRef_test", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(TestingHostWidgetWithRef(),
			mapHostedWidgetMockFactories: {
				"TestingHostedWidgetForRef": WidgetMockFactory(
					funcCreateMockWidgetState: () => Mock_TestingHostedWidgetForRefState()
				),
			},
		);
		await tester.pumpWidgetIntoScaffold(ww.widget);

		expect(find.text("Hello ezFlap!"), findsNothing);
		expect(find.text("Alternative text!"), findsNothing);
		expect(find.text("Message from hosted widget: Alternative text!"), findsOneWidget);
	});
}


