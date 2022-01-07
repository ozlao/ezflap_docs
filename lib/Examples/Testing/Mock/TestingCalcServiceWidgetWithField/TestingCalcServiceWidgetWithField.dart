
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingCalcService/TestingCalcService.dart';
import 'package:flutter/material.dart';

part 'TestingCalcServiceWidgetWithField.g.dart';

class TestingCalcServiceWidgetWithField extends EzStatefulWidgetBase {
	TestingCalcServiceWidgetWithField({ Key? key }) : super(key: key);

	@override
	TestingCalcServiceWidgetWithFieldState createState() => TestingCalcServiceWidgetWithFieldState();
}

@EzWidget()
class TestingCalcServiceWidgetWithFieldState extends _EzStateBase {
	/* DEPENDENCIES (7) **/
	@EzDI() late TestingCalcService _testingCalcService;


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Sum: {{ mySum }}</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("mySum") late int _$mySum; // --> this._mySum


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		int sum1 = this._testingCalcService.sum(2, 3);
		int sum2 = this._testingCalcService.sum(4, 5);
		int finalSum = this._testingCalcService.sum(sum1, sum2);
		this._mySum = finalSum;
	}
}




