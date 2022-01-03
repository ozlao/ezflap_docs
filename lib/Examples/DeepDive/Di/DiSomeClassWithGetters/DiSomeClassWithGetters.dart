
import 'package:ezflap_docs/Examples/DeepDive/Di/AdvancedCalcService/AdvancedCalcService.dart';
import 'package:ezflap_docs/Examples/DeepDive/Di/CalcService/CalcService.dart';

class DiSomeClassWithGetters {
	CalcService get calcService => CalcService.i();
	AdvancedCalcService get advancedCalcService => AdvancedCalcService.i();

	void printCalculations() {
		print("35 + 7 = ${calcService.sum(35, 7)}");
		print("6 * 7 = ${advancedCalcService.multiply(35, 7)}");
	}

	void printMoreCalculations() {
		print("21 + 21 = ${calcService.sum(21, 21)}");
		print("2 * 21 = ${advancedCalcService.multiply(2, 21)}");
	}

	void printEvenMoreCalculations() {
		print("38 + 14 = ${calcService.sum(38, 14)}");
		print("3 * 14 = ${advancedCalcService.multiply(35, 7)}");
	}
}



