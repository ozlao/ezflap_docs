
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ZShowWithZFor.g.dart';

class ZShowWithZFor extends EzStatefulWidgetBase {
	ZShowWithZFor({ Key? key }) : super(key: key);

	@override
	ZShowWithZForState createState() => ZShowWithZForState();
}

@EzWidget()
class ZShowWithZForState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text z-for="animal in animalsList" z-show="animal != 'cat'">
				I have an animal (which is definitely not a cat): {{ animal }}.
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




