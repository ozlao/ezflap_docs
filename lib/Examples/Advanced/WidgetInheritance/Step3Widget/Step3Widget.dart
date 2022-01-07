
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Advanced/WidgetInheritance/ParentWidget/ParentWidget.dart';
import 'package:flutter/material.dart';

part 'Step3Widget.g.dart';

class Step3Widget extends EzStatefulWidgetBase {
	Step3Widget({ Key? key }) : super(key: key);

	@override
	Step3WidgetState createState() => Step3WidgetState();
}

@EzWidget(extend: ParentWidgetState)
class Step3WidgetState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Step 3 - Approve T&C</Text>
			<Text>...</Text>
		</Column>
	""";


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		super.hookInitState();
		print("Initializing stepIdx: ${this.prop_stepIdx}");
	}
}




