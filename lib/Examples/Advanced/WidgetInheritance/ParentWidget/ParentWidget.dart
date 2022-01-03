
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'ParentWidget.g.dart';

@EzWidget()
abstract class ParentWidgetState<T extends EzStatefulWidgetBase> extends _EzStateBase<T> {
	/* PROPS (3) **/
	@EzProp("stepIdx") late int _$prop_stepIdx; // --> this._prop_stepIdx
	@EzProp("numSteps") late int _$prop_numSteps; // --> this._prop_numSteps
	@EzProp("backgroundColor") late Color _$prop_backgroundColor; // --> this._prop_backgroundColor


	/* ZML (8) **/
	static const _ZML = """
		<Container z-bind:color="backgroundColor">
			<Column>
				<Text>Step {{ curStep }} / {{ numSteps }}</Text>
				<ZInheritingWidget />
			</Column>
		</Container>
	""";


	/* COMPUTED PROPERTIES (14) **/
	@EzComputed("curStep")
	int _computedCurStep() {
		return this.prop_stepIdx + 1;
	}
}




