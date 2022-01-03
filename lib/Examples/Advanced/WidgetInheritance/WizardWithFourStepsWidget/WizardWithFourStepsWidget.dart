
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Advanced/WidgetInheritance/Step1Widget/Step1Widget.dart';
import 'package:ezflap_docs/Examples/Advanced/WidgetInheritance/Step2Widget/Step2Widget.dart';
import 'package:ezflap_docs/Examples/Advanced/WidgetInheritance/Step3Widget/Step3Widget.dart';
import 'package:ezflap_docs/Examples/Advanced/WidgetInheritance/Step4Widget/Step4Widget.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'WizardWithFourStepsWidget.g.dart';

class WizardWithFourStepsWidget extends EzStatefulWidgetBase {
	@override
	WizardWithFourStepsWidgetState createState() => WizardWithFourStepsWidgetState();
}

@EzWidget()
class WizardWithFourStepsWidgetState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Step1Widget z-if="curStepIdx == 0"
				subtitle="(subtitle)"
				z-bind:stepIdx="curStepIdx"
				z-bind:numSteps="4"
				z-bind:backgroundColor="Colors.yellow"
			/>
			<Step2Widget z-if="curStepIdx == 1"
				z-bind:stepIdx="curStepIdx"
				z-bind:numSteps="4"
				z-bind:backgroundColor="Colors.pink"
			/>
			<Step3Widget z-if="curStepIdx == 2"
				z-bind:stepIdx="curStepIdx"
				z-bind:numSteps="4"
				z-bind:backgroundColor="Colors.green"
			/>
			<Step4Widget z-if="curStepIdx == 3"
				z-bind:stepIdx="curStepIdx"
				z-bind:numSteps="4"
				z-bind:backgroundColor="Colors.blue"
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





