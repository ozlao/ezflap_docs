
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ZIfWithZFor.g.dart';

class ZIfWithZFor extends EzStatefulWidgetBase {
	@override
	ZIfWithZForState createState() => ZIfWithZForState();
}

@EzWidget()
class ZIfWithZForState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text z-for="animal in animalsList" z-if="animal != 'cat'">
				I am ready and have an animal (which is definitely not a cat): {{ animal }}.
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




