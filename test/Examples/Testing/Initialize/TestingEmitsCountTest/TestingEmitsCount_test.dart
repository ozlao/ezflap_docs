
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Initialize/TestingEmits/TestingEmits.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ezflap/src/Service/EzflapTester/WidgetTesterExtension/WidgetTesterExtension.dart';

void main() {
	testWidgets("TestingEmitsCount_test", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(TestingEmits());
		await tester.pumpWidgetIntoScaffold(ww.widget);
		expect(find.text("Counter: 0"), findsOneWidget);
		expect(ww.getNumEmits("incremented"), 0);

		await tester.pumpWithSeconds(3);
		expect(ww.getNumEmits("incremented"), 3);
	});
}


