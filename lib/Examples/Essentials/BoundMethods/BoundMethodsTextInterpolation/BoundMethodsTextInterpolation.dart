
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'BoundMethodsTextInterpolation.g.dart';

class BoundMethodsTextInterpolation extends EzStatefulWidgetBase {
	@override
	BoundMethodsTextInterpolationState createState() => BoundMethodsTextInterpolationState();
}

@EzWidget()
class BoundMethodsTextInterpolationState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>
				{{ getFullName() }} has {{ add(numApples, numOranges) }} fruits.
			</Text>
		</Container>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("firstName") String _$firstName = "Charles"; // --> this._firstName
	@EzField("lastName") String _$lastName = "Darwin"; // --> this._lastName
	@EzField("numApples") int _$numApples = 4; // --> this._numApples
	@EzField("numOranges") int _$numOranges = 2; // --> this._numOranges


	/* BOUND METHODS (16) **/
	@EzMethod("getFullName")
	String _boundGetFullName() {
	    return "${this._firstName} ${this._lastName}";
	}

	@EzMethod("add")
	int _boundAdd(int num1, int num2) {
	    return num1 + num2;
	}
}




