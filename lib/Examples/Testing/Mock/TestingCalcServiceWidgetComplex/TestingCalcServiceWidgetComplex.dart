
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Testing/Mock/TestingCalcService/TestingCalcService.dart';
import 'package:flutter/material.dart';

part 'TestingCalcServiceWidgetComplex.g.dart';

class TestingCalcServiceWidgetComplex extends EzStatefulWidgetBase {
	TestingCalcServiceWidgetComplex({ Key? key }) : super(key: key);

	@override
	TestingCalcServiceWidgetComplexState createState() => TestingCalcServiceWidgetComplexState();
}

@EzWidget()
class TestingCalcServiceWidgetComplexState extends _EzStateBase {
	/* DEPENDENCIES (7) **/
	@EzDI() late TestingCalcService _testingCalcService;


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Sum 1: {{ mySum1 }}</Text>
			<Text>Sum 2: {{ mySum2 }}</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("mySum1") late int _$mySum1; // --> this._mySum1
	@EzField("mySum2") late int _$mySum2; // --> this._mySum2


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		this._mySum1 = this._testingCalcService.sum(2, 3);
		this._mySum2 = this._testingCalcService.sum(4, 5);
	}
}




