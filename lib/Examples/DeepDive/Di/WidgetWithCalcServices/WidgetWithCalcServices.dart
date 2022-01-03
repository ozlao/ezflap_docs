
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Di/AdvancedCalcService/AdvancedCalcService.dart';
import 'package:ezflap_docs/Examples/DeepDive/Di/CalcService/CalcService.dart';
import 'package:flutter/material.dart';

part 'WidgetWithCalcServices.g.dart';

class WidgetWithCalcServices extends EzStatefulWidgetBase {
	@override
	WidgetWithCalcServicesState createState() => WidgetWithCalcServicesState();
}

@EzWidget()
class WidgetWithCalcServicesState extends _EzStateBase {
	/* DEPENDENCIES (7) **/
	@EzDI() late AdvancedCalcService _AdvancedCalcService;
	@EzDI() late CalcService _CalcService;


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>35 + 7 = {{ sum(35, 7) }}</Text>
			<Text>6 * 7 = {{ multiply(6, 7) }}</Text>
		</Column>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("sum")
	int _boundSum(int num1, int num2) {
		return this._CalcService.sum(num1, num2);
	}

	@EzMethod("multiply")
	int _boundMultiply(int num1, int num2) {
	    return this._AdvancedCalcService.multiply(num1, num2);
	}
}




