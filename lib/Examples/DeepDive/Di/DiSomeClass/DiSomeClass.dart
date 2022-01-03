
import 'package:ezflap_docs/Examples/DeepDive/Di/AdvancedCalcService/AdvancedCalcService.dart';
import 'package:ezflap_docs/Examples/DeepDive/Di/CalcService/CalcService.dart';

class DiSomeClass {
	void printCalculations() {
		CalcService calcService = CalcService.i();
		AdvancedCalcService advancedCalcService = AdvancedCalcService.i();

		print("35 + 7 = ${calcService.sum(35, 7)}");
		print("6 * 7 = ${advancedCalcService.multiply(35, 7)}");
	}
}



