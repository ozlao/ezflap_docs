
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Di/CalcService/CalcService.dart';

part "AdvancedCalcService.g.dart";

@EzService()
class AdvancedCalcService extends _EzServiceBase {
	static i() => _EzServiceBase.i();

	@EzDI() late CalcService _CalcService;

	int multiply(int first, int second) {
		int result = 0;
		for (int i = 0; i < second; i++) {
			result = this._CalcService.sum(result, first);
		}
		return result;
	}
}



