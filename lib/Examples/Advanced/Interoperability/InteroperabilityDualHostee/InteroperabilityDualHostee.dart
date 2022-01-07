
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'InteroperabilityDualHostee.g.dart';

class InteroperabilityDualHostee extends EzStatefulWidgetBase {
	InteroperabilityDualHostee({
		Key? key,
		required String title,
		required void Function() incrementCallback,
		required int Function() counterGetter,
		required void Function(int) counterSetter,
		bool $fromZML = false,
	}) : super(key: key) {
		if ($fromZML) {
			// will be initialized the ezFlap way
			return;
		}

		this.initProp("title", title);
		this.initModel("counter", getter: counterGetter, setter: counterSetter);
		this.initEmitHandler("incremented", incrementCallback);
	}

	factory InteroperabilityDualHostee.$ezFlapFactory() {
		return InteroperabilityDualHostee(
			$fromZML: true,
			title: "",
			incrementCallback: () => { },
			counterGetter: () => 42,
			counterSetter: (_) => { },
		);
	}

	@override
	InteroperabilityDualHosteeState createState() => InteroperabilityDualHosteeState();
}

@EzWidget()
class InteroperabilityDualHosteeState extends _EzStateBase {
	/* MODELS (2) **/
	@EzModel("counter") late int _$model_counter; // --> this._model_counter


	/* PROPS (3) **/
	@EzProp("title") late String _$prop_title; // --> this._prop_title


	/* EVENT EMITTERS (4) **/
	@EzEmit("incremented") late void Function() _$emit_incremented;
	// --> this._emit_incremented


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Title: {{ title }}</Text>
			<Text>Counter: {{ counter }}</Text>
			<EzTextButton caption="Increment!" z-on:pressed="onPressed()" />
		</Column>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("onPressed")
	void _boundOnPressed() {
		this._model_counter++;
		this._emit_incremented();
	}
}




