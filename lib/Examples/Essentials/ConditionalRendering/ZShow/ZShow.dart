
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ZShow.g.dart';

class ZShow extends EzStatefulWidgetBase {
	ZShow({ Key? key }) : super(key: key);

	@override
	ZShowState createState() => ZShowState();
}

@EzWidget()
class ZShowState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Column z-show="isReady">
				<Column z-show="animalsList != null">
					<Text z-show="animalsList?.isNotEmpty ?? false">
						I have {{ animalsList!.length }} animals.
					</Text>
					<Text z-show="animalsList?.isEmpty ?? true">
						I have no animals.
					</Text>
				</Column>
				<Text z-show="animalsList == null">
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




