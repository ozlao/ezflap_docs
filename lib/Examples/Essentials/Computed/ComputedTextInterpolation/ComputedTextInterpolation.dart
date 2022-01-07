
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ComputedTextInterpolation.g.dart';

class ComputedTextInterpolation extends EzStatefulWidgetBase {
	ComputedTextInterpolation({ Key? key }) : super(key: key);

	@override
	ComputedTextInterpolationState createState() => ComputedTextInterpolationState();
}

@EzWidget()
class ComputedTextInterpolationState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>
				{{ fullName }} has {{ numFruits }} fruits.
			</Text>
		</Container>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("firstName") String _$firstName = "Charles"; // --> this._firstName
	@EzField("lastName") String _$lastName = "Darwin"; // --> this._lastName
	@EzField("numApples") int _$numApples = 4; // --> this._numApples
	@EzField("numOranges") int _$numOranges = 2; // --> this._numOranges


	/* COMPUTED VALUES (14) **/
	@EzComputed("fullName")
	String _computedFullName() {
		return "${this._firstName} ${this._lastName}";
	}

	@EzComputed("numFruits")
	int _computedNumFruits() {
		return this._numApples + this._numOranges;
	}
}




