
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ComputedInCode.g.dart';

class ComputedInCode extends EzStatefulWidgetBase {
	@override
	ComputedInCodeState createState() => ComputedInCodeState();
}

@EzWidget()
class ComputedInCodeState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>
				Hello {{ upperCaseName }}!
			</Text>
		</Container>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("name") String _$name = "ezFlap"; // --> this._name


	/* COMPUTED PROPERTIES (14) **/
	@EzComputed("upperCaseName")
	String _computedUpperCaseName() {
		return this._name.toUpperCase();
	}


	/* LIFECYCLE (20) **/
	void hookInitState() {
		String nameInUpperCase = this._computedUpperCaseName();
		String nameInUpperCaseFromCache = this._cachedComputedUpperCaseName;

		print("the name is: ${nameInUpperCase}");
		print("the cached name is: ${nameInUpperCaseFromCache}");
	}
}




