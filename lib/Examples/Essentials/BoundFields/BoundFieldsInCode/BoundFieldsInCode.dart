
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'BoundFieldsInCode.g.dart';

class BoundFieldsInCode extends EzStatefulWidgetBase {
	@override
	BoundFieldsInCodeState createState() => BoundFieldsInCodeState();
}

@EzWidget()
class BoundFieldsInCodeState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>
				Hello {{ name }}!
			</Text>
		</Container>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("name") String _$name = "ezFlap"; // --> this._name


	/* LIFECYCLE (20) **/
	void hookInitState() {
		print("the default name is: ${this._name}");

		this._name = "Flutter";
		print("the updated  name is: ${this._name}");
	}
}




