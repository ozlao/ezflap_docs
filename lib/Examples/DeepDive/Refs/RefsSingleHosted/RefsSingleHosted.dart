
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'RefsSingleHosted.g.dart';

class RefsSingleHosted extends EzStatefulWidgetBase {
	RefsSingleHosted({ Key? key }) : super(key: key);

	@override
	RefsSingleHostedState createState() => RefsSingleHostedState();
}

@EzWidget()
class RefsSingleHostedState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("legalContent") late String _$prop_legalContent; // --> this._prop_legalContent


	/* PUBLIC METHODS (5) **/
	bool didUserApprove() {
		return this._isApproved;
	}


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text z-if="!isApproved">
				Please approve the following legal document: {{ legalContent }}
			</Text>
			<Text z-if="isApproved">
				Many thanks!
			</Text>
			<EzTextButton z-on:pressed="approve()">
				<Text>Approve!</Text>
			</EzTextButton>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("isApproved") bool _$isApproved = false; // --> this._isApproved


	/* BOUND METHODS (16) **/
	@EzMethod("approve")
	void _boundApprove() {
	    this._isApproved = true;
	}
}




