
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ZIfWithZShow.g.dart';

class ZIfWithZShow extends EzStatefulWidgetBase {
	@override
	ZIfWithZShowState createState() => ZIfWithZShowState();
}

@EzWidget()
class ZIfWithZShowState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text z-if="isReady" z-show="animalsList.isNotEmpty">
				I am ready and have some animals.
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




