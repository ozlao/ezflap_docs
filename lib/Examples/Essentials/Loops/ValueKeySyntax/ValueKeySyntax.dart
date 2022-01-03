
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ValueKeySyntax.g.dart';

class ValueKeySyntax extends EzStatefulWidgetBase {
	@override
	ValueKeySyntaxState createState() => ValueKeySyntaxState();
}

@EzWidget()
class ValueKeySyntaxState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text z-for="(animal, vaccinationId) in animalsMap">
				The vaccination number of my {{ animal }} is {{ vaccinationId }}.
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




