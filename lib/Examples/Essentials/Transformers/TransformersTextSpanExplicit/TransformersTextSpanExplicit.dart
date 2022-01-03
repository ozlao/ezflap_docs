
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'TransformersTextSpanExplicit.g.dart';

class TransformersTextSpanExplicit extends EzStatefulWidgetBase {
	@override
	TransformersTextSpanExplicitState createState() => TransformersTextSpanExplicitState();
}

@EzWidget()
class TransformersTextSpanExplicitState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Text z-constructor="rich">
			<:0->
				<TextSpan>
					<text->
						"Hello " + name + "!"
					</text->
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




