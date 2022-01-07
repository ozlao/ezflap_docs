
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ValueIndexSyntax.g.dart';

class ValueIndexSyntax extends EzStatefulWidgetBase {
	ValueIndexSyntax({ Key? key }) : super(key: key);

	@override
	ValueIndexSyntaxState createState() => ValueIndexSyntaxState();
}

@EzWidget()
class ValueIndexSyntaxState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text z-for="(animal, idx) in animalsList">
				My #{{ idx }} pet is: {{ animal }}.
			</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("animalsList") List<String> _$animalsList = [ // --> this._animalsList
		"cat",
		"dog",
		"tardigrade",
	];
}




