
	import 'package:ezflap/ezflap.dart';
	import 'package:ezflap_docs/Examples/Advanced/WidgetInheritance/MiddleWidget/MiddleWidget.dart';
	import 'package:flutter/material.dart';

	part 'Step4Widget.g.dart';

	class Step4Widget extends EzStatefulWidgetBase {
		@override
		Step4WidgetState createState() => Step4WidgetState();
	}

@EzWidget(extend: MiddleWidgetState)
class Step4WidgetState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Step 4 - Thank You</Text>
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




