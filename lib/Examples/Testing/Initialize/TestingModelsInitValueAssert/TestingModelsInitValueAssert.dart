
import 'dart:async';
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'TestingModelsInitValueAssert.g.dart';

class TestingModelsInitValueAssert extends EzStatefulWidgetBase {
	TestingModelsInitValueAssert({ Key? key }) : super(key: key);

	@override
	TestingModelsInitValueAssertState createState() => TestingModelsInitValueAssertState();
}

@EzWidget()
class TestingModelsInitValueAssertState extends _EzStateBase {
	/* MODELS (2) **/
	@EzModel("counter") late int _$model_counter; // --> this._model_counter


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Counter: {{ counter }}</Text>
		</Column>
	""";


	/* LIFECYCLE (20) **/
	@override
	Future<void> hookReady() async {
		Timer timer = Timer.periodic(Duration(seconds: 1), (_) {
			this._model_counter++;
		});
		this.onDispose(() => timer.cancel());
	}
}




