
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'BoundMethodsInCode.g.dart';

class BoundMethodsInCode extends EzStatefulWidgetBase {
	@override
	BoundMethodsInCodeState createState() => BoundMethodsInCodeState();
}

@EzWidget()
class BoundMethodsInCodeState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>
				Hello {{ makeUpperCase(name) }}!
			</Text>
		</Container>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("name") String _$name = "ezFlap"; // --> this._name


	/* BOUND METHODS (16) **/
	@EzMethod("makeUpperCase")
	String _boundMakeUpperCase(String text) {
	    return text.toUpperCase();
	}


	/* LIFECYCLE (20) **/
	void hookInitState() {
		String nameInUpperCase = this._boundMakeUpperCase(this._name);
		print("the name is: ${nameInUpperCase}");
	}
}




