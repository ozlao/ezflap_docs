
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingCalcService/TestingCalcService.dart';

class Mock_TestingCalcServiceWidgetWithInvocationsComplexMockPart
	extends TestingCalcService
	with TestWrapperMixin
{
	@override
	int sum(int num1, int num2) {
		this.tw_logInvocation("sum",
			extra: "The true answer would be: ${num1 + num2}",
			arrParams: [ num1, num2 ],
		);
		return 42;
	}
}





