
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'InteroperabilityInteractiveHostee.g.dart';

	class InteroperabilityInteractiveHostee extends EzStatefulWidgetBase {
		InteroperabilityInteractiveHostee({
			required String title,
			required void Function() incrementCallback,
			required int Function() counterGetter,
			required void Function(int) counterSetter,
		}) {
			this.initProp("title", title);
			this.initModel("counter", getter: counterGetter, setter: counterSetter);
			this.initEmitHandler("incremented", incrementCallback);
		}

		@override
		InteroperabilityInteractiveHosteeState createState() => InteroperabilityInteractiveHosteeState();
	}

	@EzWidget()
	class InteroperabilityInteractiveHosteeState extends _EzStateBase {
		/* MODELS (2) **/
		@EzModel("counter") late int _$model_counter; // --> this._model_counter


		/* PROPS (3) **/
		@EzProp("title") late String _$prop_title; // --> this._prop_title


		/* EVENT EMITTERS (4) **/
		@EzEmit("incremented") late void Function() _$emit_incremented; // --> this._emit_incremented


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




