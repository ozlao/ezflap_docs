
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ValueKeyIndexSyntax.g.dart';

class ValueKeyIndexSyntax extends EzStatefulWidgetBase {
	ValueKeyIndexSyntax({ Key? key }) : super(key: key);

	@override
	ValueKeyIndexSyntaxState createState() => ValueKeyIndexSyntaxState();
}

@EzWidget()
class ValueKeyIndexSyntaxState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text z-for="(animal, vaccinationId, idx) in animalsMap">
				{{ idx + 1 }}. The vaccination number of my {{ animal }} is {{ vaccinationId }}.
			</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("animalsMap") Map<String, String> _$animalsMap = { // --> this._animalsMap
		"199274": "cat",
		"75351": "dog",
		"187331": "tardigrade",
	};
}




