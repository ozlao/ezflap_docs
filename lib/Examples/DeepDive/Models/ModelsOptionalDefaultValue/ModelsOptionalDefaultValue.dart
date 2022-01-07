import 'dart:async';
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ModelsOptionalDefaultValue.g.dart';

class ModelsOptionalDefaultValue extends EzStatefulWidgetBase {
	ModelsOptionalDefaultValue({ Key? key }) : super(key: key);

	@override
	ModelsOptionalDefaultValueState createState() => ModelsOptionalDefaultValueState();
}

@EzWidget()
class ModelsOptionalDefaultValueState extends _EzStateBase {
	/* MODELS (2) **/
	@EzOptionalModel("counter") int _$model_counter = 0; // --> this._model_counter


	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>Count (inside): {{ counter }}</Text>
		</Container>
	""";


	/* LIFECYCLE (20) **/
	@override
	Future<void> hookReady() async {
		Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
			this._model_counter++;
		});
		this.onDispose(timer.cancel);
	}
}




