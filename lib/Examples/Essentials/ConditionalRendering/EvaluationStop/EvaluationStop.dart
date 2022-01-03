
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'EvaluationStop.g.dart';

class EvaluationStop extends EzStatefulWidgetBase {
	@override
	EvaluationStopState createState() => EvaluationStopState();
}

@EzWidget()
class EvaluationStopState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text z-if="animalsList != null && animalsList!.isNotEmpty">
				[alwaysNull] has somehow been set to 42.
			</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("animalsList") List<String>? _$animalsList; // --> this._animalsList
}




