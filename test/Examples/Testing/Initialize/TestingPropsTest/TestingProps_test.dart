
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Initialize/TestingProps/TestingProps.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
	testWidgets("TestingProps_test", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(TestingProps(),
			mapProps: {
				"title": "Nihao shijie!",
				"counter": 42,
			},
		);
		await tester.pumpWidgetIntoScaffold(ww.widget);

		expect(find.text("Title: Nihao shijie!"), findsOneWidget);
		expect(find.text("Counter: 42"), findsOneWidget);
	});
}


