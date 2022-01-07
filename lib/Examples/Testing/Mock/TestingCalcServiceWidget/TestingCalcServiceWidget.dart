
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingCalcService/TestingCalcService.dart';
import 'package:flutter/material.dart';

part 'TestingCalcServiceWidget.g.dart';

class TestingCalcServiceWidget extends EzStatefulWidgetBase {
	TestingCalcServiceWidget({ Key? key }) : super(key: key);

	@override
	TestingCalcServiceWidgetState createState() => TestingCalcServiceWidgetState();
}

@EzWidget()
class TestingCalcServiceWidgetState extends _EzStateBase {
	/* DEPENDENCIES (7) **/
	@EzDI() late TestingCalcService _testingCalcService;


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Sum: {{ sum(2, 3) }}</Text>
		</Column>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("sum")
	int _boundSum(int num1, int num2) {
	    return this._testingCalcService.sum(num1, num2);
	}
}




