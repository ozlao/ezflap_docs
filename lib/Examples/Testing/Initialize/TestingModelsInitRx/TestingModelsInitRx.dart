
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'TestingModelsInitRx.g.dart';

class TestingModelsInitRx extends EzStatefulWidgetBase {
	TestingModelsInitRx({ Key? key }) : super(key: key);

	@override
	TestingModelsInitRxState createState() => TestingModelsInitRxState();
}

@EzWidget()
class TestingModelsInitRxState extends _EzStateBase {
	/* MODELS (2) **/
	@EzModel("counter") late int _$model_counter; // --> this._model_counter


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Counter: {{ counter }}</Text>
		</Column>
	""";
}




