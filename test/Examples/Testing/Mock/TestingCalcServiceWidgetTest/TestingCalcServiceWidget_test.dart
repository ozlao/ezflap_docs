
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingCalcService/TestingCalcService.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingCalcServiceWidget/TestingCalcServiceWidget.dart';
import 'package:flutter_test/flutter_test.dart';

class _Mock_TestingCalcService extends TestingCalcService {
	@override
	int sum(int num1, int num2) {
		return 42;
	}
}

void main() {
	testWidgets("TestingCalcServiceWidget_test", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(TestingCalcServiceWidget(),
			mapDIOverrides: {
				"TestingCalcService": _Mock_TestingCalcService(),
			},
		);
		await tester.pumpWidgetIntoScaffold(ww.widget);

		expect(find.text("Sum: 42"), findsOneWidget);
	});
}


