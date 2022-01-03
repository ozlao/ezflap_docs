
import 'package:ezflap/ezflap.dart';

part "TestingCalcService.g.dart";

@EzService()
class TestingCalcService extends _EzServiceBase {
	static i() => _EzServiceBase.i();

	int sum(int first, int second) {
		return first + second;
	}
}


