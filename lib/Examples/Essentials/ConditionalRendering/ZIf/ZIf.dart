
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ZIf.g.dart';

class ZIf extends EzStatefulWidgetBase {
	@override
	ZIfState createState() => ZIfState();
}

@EzWidget()
class ZIfState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Column z-if="isReady">
				<Column z-if="animalsList != null">
					<Text z-if="animalsList!.isNotEmpty">
						I have {{ animalsList!.length }} animals.
					</Text>
					<Text z-if="animalsList!.isEmpty">
						I have no animals.
					</Text>
				</Column>
				<Text z-if="animalsList == null">
					I cannot have animals.
				</Text>
			</Column>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("isReady") bool _$isReady = true; // --> this._isReady
	@EzField("animalsList") List<String>? _$animalsList = [ // --> this._animalsList
		"cat",
		"dog",
		"tardigrade",
	];
}




