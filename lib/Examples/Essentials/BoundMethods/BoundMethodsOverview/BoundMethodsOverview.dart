
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'BoundMethodsOverview.g.dart';

class BoundMethodsOverview extends EzStatefulWidgetBase {
	@override
	BoundMethodsOverviewState createState() => BoundMethodsOverviewState();
}

@EzWidget()
class BoundMethodsOverviewState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Text>{{ getHelloWorld() }}</Text>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("getHelloWorld")
	String _boundGetHelloWorld() {
	    return "Hello World!";
	}
}





