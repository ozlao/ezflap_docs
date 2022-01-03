
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingCalcService/TestingCalcService.dart';

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



