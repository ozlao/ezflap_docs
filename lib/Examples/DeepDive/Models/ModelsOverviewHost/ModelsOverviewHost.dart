
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Models/ModelsOverviewHosted/ModelsOverviewHosted.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ModelsOverviewHost.g.dart';

class ModelsOverviewHost extends EzStatefulWidgetBase {
	ModelsOverviewHost({ Key? key }) : super(key: key);

	@override
	ModelsOverviewHostState createState() => ModelsOverviewHostState();
}

@EzWidget()
class ModelsOverviewHostState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<ModelsOverviewHosted z-model:counter="myCounter" />
			<Text>Count (outside): {{ myCounter }}</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("myCounter") int _$myCounter = 0; // --> this._myCounter
}




