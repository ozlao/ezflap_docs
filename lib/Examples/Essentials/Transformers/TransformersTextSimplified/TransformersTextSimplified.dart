
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'TransformersTextSimplified.g.dart';

class TransformersTextSimplified extends EzStatefulWidgetBase {
	TransformersTextSimplified({ Key? key }) : super(key: key);

	@override
	TransformersTextSimplifiedState createState() => TransformersTextSimplifiedState();
}

@EzWidget()
class TransformersTextSimplifiedState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Text>
			Hello {{ name }}!
		</Text>
	""";


	/* COMPUTED VALUES (14) **/
	@EzComputed("name")
	String _computedName() {
		return "ezFlap!";
	}
}




