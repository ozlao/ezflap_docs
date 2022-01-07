
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Refs/RefsSingleHosted/RefsSingleHosted.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'RefsSingleHost.g.dart';

class RefsSingleHost extends EzStatefulWidgetBase {
	RefsSingleHost({ Key? key }) : super(key: key);

	@override
	RefsSingleHostState createState() => RefsSingleHostState();
}

	@EzWidget()
	class RefsSingleHostState extends _EzStateBase {
		/* ZML (8) **/
		static const _ZML = """
			<Column>
				<Text>Hello ezFlap!</Text>
				<RefsSingleHosted
					z-ref="refsSingleHosted"
					legalContent="Terms and Conditions..."
				/>
				<EzTextButton z-on:pressed="submit()">
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
			if (this._ref_refsSingleHosted!.didUserApprove()) {
				print("The user approved. We may submit!");
			}
			else {
				print("The user did not approve. Abort submission.");
			}
		}
	}




