import 'dart:async';
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ModelsSyntaxUnnamedHosted.g.dart';

class ModelsSyntaxUnnamedHosted extends EzStatefulWidgetBase {
	ModelsSyntaxUnnamedHosted({ Key? key }) : super(key: key);

	@override
	ModelsSyntaxUnnamedHostedState createState() => ModelsSyntaxUnnamedHostedState();
}

@EzWidget()
class ModelsSyntaxUnnamedHostedState extends _EzStateBase {
	/* MODELS (2) **/
	@EzModel() late int _$model; // --> this._model


	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>Count (inside): {{ model }}</Text>
		</Container>
	""";


	/* LIFECYCLE (20) **/
	@override
	Future<void> hookReady() async {
		Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
			this._model++;
		});
		this.onDispose(timer.cancel);
	}
}




