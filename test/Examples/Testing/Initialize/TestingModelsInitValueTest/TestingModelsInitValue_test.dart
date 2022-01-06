
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Initialize/TestingModelsInitValue/TestingModelsInitValue.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ezflap/src/Service/EzflapTester/WidgetTesterExtension/WidgetTesterExtension.dart';

void main() {
	testWidgets("TestingModelsInitValue_test", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(TestingModelsInitValue())
			..initModel<String>(value: "default!")
			..initModel<int>(name: "counter", value: 42)
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);

		expect(find.text("Default model: default!"), findsOneWidget);
		expect(find.text("Counter: 42"), findsOneWidget);
	});
}


