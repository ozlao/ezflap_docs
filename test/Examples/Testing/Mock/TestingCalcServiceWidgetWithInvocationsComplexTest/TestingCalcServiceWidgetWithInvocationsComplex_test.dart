
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingCalcServiceWidgetComplex/TestingCalcServiceWidgetComplex.dart';
import 'package:flutter_test/flutter_test.dart';
import '../TestingCalcServiceWidgetWithInvocationsComplexMockPart/TestingCalcServiceWidgetWithInvocationsComplexMockPart.dart';
import 'package:ezflap/src/Service/EzflapTester/WidgetTesterExtension/WidgetTesterExtension.dart';

void main() {
	testWidgets("TestingCalcServiceWidget_test", (WidgetTester tester) async {
		Mock_TestingCalcServiceWidgetWithInvocationsComplexMockPart mock =
			Mock_TestingCalcServiceWidgetWithInvocationsComplexMockPart();

		WidgetWrapper ww = WidgetWrapper(TestingCalcServiceWidgetComplex(),
			mapDIOverrides: {
				"TestingCalcService": mock,
			},
		);
		await tester.pumpWidgetIntoScaffold(ww.widget);

		expect(find.text("Sum 1: 42"), findsOneWidget);
		expect(find.text("Sum 2: 42"), findsOneWidget);

		expect(mock.tw_wasInvoked(key: "sum", exactlyNumTimes: 2), true);

		expect(mock.tw_getParam("sum", 0), 4);
		expect(mock.tw_getParam("sum", 1), 5);

		expect(mock.tw_getExtraOfLastInvocation("sum"), "The true answer would be: 9");
	});
}


