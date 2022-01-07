
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'TransformersTextExplicit.g.dart';

class TransformersTextExplicit extends EzStatefulWidgetBase {
	TransformersTextExplicit({ Key? key }) : super(key: key);

	@override
	TransformersTextExplicitState createState() => TransformersTextExplicitState();
}

@EzWidget()
class TransformersTextExplicitState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Text>
			<:0->
				"Hello " + name + "!"
			</:0->
		</Text>
	""";


	/* COMPUTED VALUES (14) **/
	@EzComputed("name")
	String _computedName() {
		return "ezFlap!";
	}
}




