
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Advanced/ZBuild/ZBuildWithBuilderStep1Widget/ZBuildWithBuilderStep1Widget.dart';
import 'package:ezflap_docs/Examples/Advanced/ZBuild/ZBuildWithBuilderStep2Widget/ZBuildWithBuilderStep2Widget.dart';
import 'package:ezflap_docs/Examples/Advanced/ZBuild/ZBuildWithBuilderStep3Widget/ZBuildWithBuilderStep3Widget.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'ZBuildWithBuilder.g.dart';

class ZBuildWithBuilder extends EzStatefulWidgetBase {
	ZBuildWithBuilder({ Key? key }) : super(key: key);

	@override
	ZBuildWithBuilderState createState() => ZBuildWithBuilderState();
}

@EzWidget()
class ZBuildWithBuilderState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Step {{ stepIdx + 1 }} out of 3</Text>
			<ZBuild z-builder="builderList[stepIdx]" />
			<EzTextButton caption="Next" z-on:pressed="nextStep()" />
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("stepIdx") int _$stepIdx = 0; // --> this._stepIdx
	@EzField("builderList") List<void Function(BuildContext)> _$builderList = [
		(_) => ZBuildWithBuilderStep1Widget(),
		(_) => ZBuildWithBuilderStep2Widget(),
		(_) => ZBuildWithBuilderStep3Widget(),
	];
	// --> this._builderList


	/* BOUND METHODS (16) **/
	@EzMethod("nextStep")
	void _boundNextStep() {
	    this._stepIdx++;
	}
}




