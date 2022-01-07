
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ModelsMandatoryLate.g.dart';

class ModelsMandatoryLate extends EzStatefulWidgetBase {
	ModelsMandatoryLate({ Key? key }) : super(key: key);

	@override
	ModelsMandatoryLateState createState() => ModelsMandatoryLateState();
}

@EzWidget()
class ModelsMandatoryLateState extends _EzStateBase {
	/* MODELS (2) **/
	@EzModel("counter") late int _$model_counter; // --> this._model_counter


	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>Count (inside): {{ counter }}</Text>
		</Container>
	""";
}




