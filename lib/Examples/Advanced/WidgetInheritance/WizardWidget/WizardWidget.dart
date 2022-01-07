
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Advanced/WidgetInheritance/Step1Widget/Step1Widget.dart';
import 'package:ezflap_docs/Examples/Advanced/WidgetInheritance/Step2Widget/Step2Widget.dart';
import 'package:ezflap_docs/Examples/Advanced/WidgetInheritance/Step3Widget/Step3Widget.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'WizardWidget.g.dart';

class WizardWidget extends EzStatefulWidgetBase {
	WizardWidget({ Key? key }) : super(key: key);

	@override
	WizardWidgetState createState() => WizardWidgetState();
}

@EzWidget()
class WizardWidgetState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Step1Widget z-if="curStepIdx == 0"
				subtitle="(subtitle)"
				z-bind:stepIdx="curStepIdx"
				z-bind:numSteps="3"
				z-bind:backgroundColor="Colors.yellow"
			/>
			<Step2Widget z-if="curStepIdx == 1"
				z-bind:stepIdx="curStepIdx"
				z-bind:numSteps="3"
				z-bind:backgroundColor="Colors.pink"
			/>
			<Step3Widget z-if="curStepIdx == 2"
				z-bind:stepIdx="curStepIdx"
				z-bind:numSteps="3"
				z-bind:backgroundColor="Colors.green"
			/>
			<EzTextButton caption="Next" z-on:pressed="activateNextStep()" />
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("curStepIdx") int _$curStepIdx = 0; // --> this._curStepIdx


	/* BOUND METHODS (16) **/
	@EzMethod("activateNextStep")
	void _boundActivateNextStep() {
	    this._curStepIdx++;
	}
}




