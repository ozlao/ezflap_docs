
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Refs/RefsMultiHosted/RefsMultiHosted.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

part 'RefsMultiHost.g.dart';

class RefsMultiHost extends EzStatefulWidgetBase {
	RefsMultiHost({ Key? key }) : super(key: key);

	@override
	RefsMultiHostState createState() => RefsMultiHostState();
}

	@EzWidget()
	class RefsMultiHostState extends _EzStateBase {
		/* ZML (8) **/
		static const _ZML = """
			<Column>
				<Text>Hello ezFlap!</Text>
				<Column z-for="(clause, clauseKey, clauseIdx) in legalClausesMap">
					<Text>Clause {{ clauseIdx + 1 }}:</Text>
					<RefsMultiHosted
						z-refs="refsMultiHostedMap"
						z-refs-key="clauseKey"
						z-bind:legalContent="clause"
					/>
				</Column>
				<EzTextButton z-on:pressed="submit()">
					<Text>Submit!</Text>
				</EzTextButton>
			</Column>
		""";


		/* REFERENCES TO HOSTED WIDGETS (10) **/
		@EzRefs("refsMultiHostedMap") late Map<String, RefsMultiHostedState> _$refs_refsMultiHostedMap;
		// --> this._refs_refsMultiHostedMap


		/* BOUND FIELDS (11) **/
		@EzField("legalClausesMap") Map<String, String> _$legalClausesMap = {
			"tnc": "Terms and Conditions...",
			"privacy": "Privacy Agreement...",
			"conduct": "Code of Conduct...",
			"aup": "Acceptable Use Policy...",
		};
		// --> this._legalClausesMap


		/* BOUND METHODS (16) **/
		@EzMethod("submit")
		void _boundSubmit() {
			if (this._refs_refsMultiHostedMap.values.every((x) => x.didUserApprove())) {
				print("The user approved all clauses. We may submit!");
			}
			else {
				print("The user did not approve one or more clauses. Abort submission.");
			}
		}
	}




