
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Advanced/WidgetInheritance/ParentWidget/ParentWidget.dart';
import 'package:flutter/material.dart';

part 'Step2Widget.g.dart';

class Step2Widget extends EzStatefulWidgetBase {
	Step2Widget({ Key? key }) : super(key: key);

	@override
	Step2WidgetState createState() => Step2WidgetState();
}

@EzWidget(extend: ParentWidgetState)
class Step2WidgetState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Step 2 - Contact Information</Text>
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




