
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingCalcService/TestingCalcService.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingCalcServiceWidgetWithField/TestingCalcServiceWidgetWithField.dart';
import 'package:flutter_test/flutter_test.dart';

class Mock_TestingCalcServiceWithInvocations
	extends TestingCalcService
	with TestWrapperMixin
{
	@override
	int sum(int num1, int num2) {
		this.tw_logInvocation("sum");
		return 42;
	}
}

void main() {
	testWidgets("TestingCalcServiceWidget_test", (WidgetTester tester) async {
		Mock_TestingCalcServiceWithInvocations mock = Mock_TestingCalcServiceWithInvocations();
		WidgetWrapper ww = WidgetWrapper(TestingCalcServiceWidgetWithField(),
			mapDIOverrides: {
				"TestingCalcService": mock,
			},
		);
		await tester.pumpWidgetIntoScaffold(ww.widget);

		expect(find.text("Sum: 42"), findsOneWidget);
		expect(mock.tw_wasInvoked(key: "sum"), true);
		expect(mock.tw_wasInvoked(key: "sum", exactlyNumTimes: 3), true);
		expect(mock.tw_wasInvoked(key: "sum", atLeastNumTimes: 2), true);
		expect(mock.tw_wasInvoked(key: "sum", atMostNumItems: 4), true);
		expect(
			mock.tw_wasInvoked(
				key: "sum",
				atLeastNumTimes: 2,
				atMostNumItems: 4,
			),
			true
		);
	});
}


