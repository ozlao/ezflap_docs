
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'TransformersTextSpanSimplified.g.dart';

class TransformersTextSpanSimplified extends EzStatefulWidgetBase {
	TransformersTextSpanSimplified({ Key? key }) : super(key: key);

	@override
	TransformersTextSpanSimplifiedState createState() => TransformersTextSpanSimplifiedState();
}

@EzWidget()
class TransformersTextSpanSimplifiedState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Text z-constructor="rich">
			<:0->
				<TextSpan>
					Hello {{ name }}!
				</TextSpan>
			</:0->
		</Text>
	""";


	/* COMPUTED VALUES (14) **/
	@EzComputed("name")
	String _computedName() {
		return "ezFlap!";
	}
}




