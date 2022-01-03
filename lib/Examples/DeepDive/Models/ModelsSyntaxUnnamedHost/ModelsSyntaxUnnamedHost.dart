
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Models/ModelsSyntaxUnnamedHosted/ModelsSyntaxUnnamedHosted.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ModelsSyntaxUnnamedHost.g.dart';

class ModelsSyntaxUnnamedHost extends EzStatefulWidgetBase {
	@override
	ModelsSyntaxUnnamedHostState createState() => ModelsSyntaxUnnamedHostState();
}

@EzWidget()
class ModelsSyntaxUnnamedHostState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<ModelsSyntaxUnnamedHosted z-model="myCounter" />
			<Text>Count (outside): {{ myCounter }}</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("myCounter") int _$myCounter = 0; // --> this._myCounter
}




