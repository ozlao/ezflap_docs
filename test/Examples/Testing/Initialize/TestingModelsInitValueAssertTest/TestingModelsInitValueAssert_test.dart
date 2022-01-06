
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Initialize/TestingModelsInitValueAssert/TestingModelsInitValueAssert.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ezflap/src/Service/EzflapTester/WidgetTesterExtension/WidgetTesterExtension.dart';

void main() {
	testWidgets("TestingModelsInitValueAssert_test", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(TestingModelsInitValueAssert())
			..initModel<int>(name: "counter", value: 42)
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		expect(find.text("Counter: 42"), findsOneWidget);
		expect(ww.getModelValue("counter"), 42);

		await tester.pumpWithSeconds(1);
		expect(ww.getModelValue("counter"), 43);

		await tester.pumpWithSeconds(1);
		expect(ww.getModelValue("counter"), 44);

		ww.setModelValue(100, "counter");
		expect(ww.getModelValue("counter"), 100);

		await tester.pumpWithSeconds(1);
		expect(ww.getModelValue("counter"), 101);

		await tester.pumpWithSeconds(1);
		expect(ww.getModelValue("counter"), 102);
	});
}


