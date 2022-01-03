
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ValueSyntax.g.dart';

class ValueSyntax extends EzStatefulWidgetBase {
	@override
	ValueSyntaxState createState() => ValueSyntaxState();
}

@EzWidget()
class ValueSyntaxState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text z-for="animal in animalsList">I have a pet {{ animal }}.</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("animalsList") List<String> _$animalsList = [ "cat", "dog", "tardigrade" ]; // --> this._animalsList
}




