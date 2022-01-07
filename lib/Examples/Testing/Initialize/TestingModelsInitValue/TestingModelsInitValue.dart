
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'TestingModelsInitValue.g.dart';

class TestingModelsInitValue extends EzStatefulWidgetBase {
	TestingModelsInitValue({ Key? key }) : super(key: key);

	@override
	TestingModelsInitValueState createState() => TestingModelsInitValueState();
}

@EzWidget()
class TestingModelsInitValueState extends _EzStateBase {
	/* MODELS (2) **/
	@EzModel() late String _$model; // --> this._model
	@EzModel("counter") late int _$model_counter; // --> this._model_counter


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Default model: {{ model }}</Text>
			<Text>Counter: {{ counter }}</Text>
		</Column>
	""";
}




