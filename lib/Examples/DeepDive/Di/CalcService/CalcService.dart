
import 'package:ezflap/ezflap.dart';

part "CalcService.g.dart";

@EzService()
class CalcService extends _EzServiceBase {
	static i() => _EzServiceBase.i();

	int sum(int first, int second) {
		return first + second;
	}
}



