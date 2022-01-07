import 'dart:async';
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ModelsOverviewHosted.g.dart';

class ModelsOverviewHosted extends EzStatefulWidgetBase {
	ModelsOverviewHosted({ Key? key }) : super(key: key);

	@override
	ModelsOverviewHostedState createState() => ModelsOverviewHostedState();
}

@EzWidget()
class ModelsOverviewHostedState extends _EzStateBase {
	/* MODELS (2) **/
	@EzModel("counter") late int _$model_counter; // --> this._model_counter


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




