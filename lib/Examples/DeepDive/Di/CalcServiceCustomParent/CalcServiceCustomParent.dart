
import 'package:ezflap/ezflap.dart';

part "CalcServiceCustomParent.g.dart";

abstract class CustomParentBase extends EzServiceBase {
	@protected
	void printResult(int result) {
		print("Result: ${result}");
	}
}

@EzService(CustomParentBase)
class CalcServiceCustomParent extends _EzServiceBase {
	static i() => _EzServiceBase.i();

	int sum(int first, int second) {
		int result = first + second;

		this.printResult(result);

		return result;
	}
}




