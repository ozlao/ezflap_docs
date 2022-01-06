
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Initialize/TestingEmits/TestingEmits.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ezflap/src/Service/EzflapTester/WidgetTesterExtension/WidgetTesterExtension.dart';

void main() {
	testWidgets("TestingEmits_test", (WidgetTester tester) async {
		int? localCounter;

		WidgetWrapper ww = WidgetWrapper(TestingEmits(),
			mapEmitHandlers: {
				"incremented": (int newCounter) {
					localCounter = newCounter;
				},
			},
		);
		await tester.pumpWidgetIntoScaffold(ww.widget);
		expect(find.text("Counter: 0"), findsOneWidget);
		expect(localCounter, null);

		await tester.pumpWithSeconds(1);
		expect(find.text("Counter: 1"), findsOneWidget);
		expect(localCounter, 1);

		await tester.pumpWithSeconds(1);
		expect(find.text("Counter: 2"), findsOneWidget);
		expect(localCounter, 2);
	});
}


