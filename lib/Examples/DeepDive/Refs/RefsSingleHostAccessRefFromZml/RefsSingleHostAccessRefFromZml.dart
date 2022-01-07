
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Refs/RefsSingleHosted/RefsSingleHosted.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'RefsSingleHostAccessRefFromZml.g.dart';

class RefsSingleHostAccessRefFromZml extends EzStatefulWidgetBase {
	RefsSingleHostAccessRefFromZml({ Key? key }) : super(key: key);

	@override
	RefsSingleHostAccessRefFromZmlState createState() => RefsSingleHostAccessRefFromZmlState();
}

@EzWidget()
class RefsSingleHostAccessRefFromZmlState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Hello ezFlap!</Text>
			<RefsSingleHosted
				z-ref="refsSingleHosted"
				legalContent="Terms and Conditions..."
			/>
			<EzTextButton
				z-if="refsSingleHosted != null && refsSingleHosted!.didUserApprove()"
				z-on:pressed="submit()"
			>
				<Text>Submit!</Text>
			</EzTextButton>
		</Column>
	""";


	/* REFERENCES TO HOSTED WIDGETS (10) **/
	@EzRef("refsSingleHosted") RefsSingleHostedState? _$ref_refsSingleHosted;
	// --> this._ref_refsSingleHosted


	/* BOUND METHODS (16) **/
	@EzMethod("submit")
	void _boundSubmit() {
		print("The user approved. We may submit!");
	}
}




