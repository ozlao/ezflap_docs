
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Advanced/WidgetInheritance/ParentWidget/ParentWidget.dart';
import 'package:flutter/material.dart';

part 'Step1Widget.g.dart';

class Step1Widget extends EzStatefulWidgetBase {
	Step1Widget({ Key? key }) : super(key: key);

	@override
	Step1WidgetState createState() => Step1WidgetState();
}

@EzWidget(extend: ParentWidgetState)
class Step1WidgetState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("subtitle") late String _$prop_subtitle; // --> this._prop_subtitle


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Step 1 - Personal Details</Text>
			<Text>{{ subtitle }}</Text>
			<Text>...</Text>
			<Text>In step {{ curStep }}!</Text>
			<Text>Total steps: {{ numSteps }}!</Text>
		</Column>
	""";


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		super.hookInitState();
		print("Initializing stepIdx: ${this.prop_stepIdx}");
	}
}




