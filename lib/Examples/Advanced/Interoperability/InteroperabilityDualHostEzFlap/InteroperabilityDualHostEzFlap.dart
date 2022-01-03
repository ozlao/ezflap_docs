
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Advanced/Interoperability/InteroperabilityDualHostee/InteroperabilityDualHostee.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'InteroperabilityDualHostEzFlap.g.dart';

class InteroperabilityDualHostEzFlap extends EzStatefulWidgetBase {
	@override
	InteroperabilityDualHostEzFlapState createState() => InteroperabilityDualHostEzFlapState();
}

@EzWidget()
class InteroperabilityDualHostEzFlapState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>In native host. Hostee:</Text>
			<InteroperabilityDualHostee
				title="Hostee Title!"
				z-model:counter="myCounter"
				z-on:incremented="onIncremented()"
			/>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("myCounter") int _$myCounter = 0; // --> this._myCounter


	/* BOUND METHODS (16) **/
	@EzMethod("onIncremented")
	void _boundOnIncremented() {
	    print("Incremented!");
	}
}




