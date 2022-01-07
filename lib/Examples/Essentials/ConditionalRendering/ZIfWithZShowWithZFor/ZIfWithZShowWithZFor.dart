
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ZIfWithZShowWithZFor.g.dart';

class ZIfWithZShowWithZFor extends EzStatefulWidgetBase {
	ZIfWithZShowWithZFor({ Key? key }) : super(key: key);

	@override
	ZIfWithZShowWithZForState createState() => ZIfWithZShowWithZForState();
}

@EzWidget()
class ZIfWithZShowWithZForState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text z-for="animal in animalsList" z-if="isReady" z-show="animal != 'cat'">
				I am ready and have an animal (which is definitely not a cat): {{ animal }}.
			</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("isReady") bool _$isReady = true; // --> this._isReady
	@EzField("animalsList") List<String> _$animalsList = [ // --> this._animalsList
		"cat",
		"dog",
		"tardigrade",
	];
}




