
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Di/CalcService/CalcService.dart';
import 'package:flutter/material.dart';

part 'WidgetWithCalcService.g.dart';

class WidgetWithCalcService extends EzStatefulWidgetBase {
	@override
	WidgetWithCalcServiceState createState() => WidgetWithCalcServiceState();
}

@EzWidget()
class WidgetWithCalcServiceState extends _EzStateBase {
	/* DEPENDENCIES (7) **/
	@EzDI() late CalcService _CalcService;


	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>35 + 7 = {{ sum(35, 7) }}</Text>
		</Container>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("sum")
	int _boundSum(int num1, int num2) {
		return this._CalcService.sum(num1, num2);
	}
}




