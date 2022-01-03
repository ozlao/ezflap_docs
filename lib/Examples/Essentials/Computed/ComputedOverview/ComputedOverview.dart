
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ComputedOverview.g.dart';

class ComputedOverview extends EzStatefulWidgetBase {
	@override
	ComputedOverviewState createState() => ComputedOverviewState();
}

@EzWidget()
class ComputedOverviewState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Text>{{ helloWorld }}</Text>
	""";


	/* COMPUTED PROPERTIES (14) **/
	@EzComputed("helloWorld")
	String _computedHelloWorld() {
		return "Hello World!";
	}
}




