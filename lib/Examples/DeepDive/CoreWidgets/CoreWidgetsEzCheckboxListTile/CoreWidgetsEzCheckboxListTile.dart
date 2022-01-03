
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'CoreWidgetsEzCheckboxListTile.g.dart';

class CoreWidgetsEzCheckboxListTile extends EzStatefulWidgetBase {
	@override
	CoreWidgetsEzCheckboxListTileState createState() => CoreWidgetsEzCheckboxListTileState();
}

@EzWidget()
class CoreWidgetsEzCheckboxListTileState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<EzCheckboxListTile z-model="approvedTnc" caption="I approve the T&Cs" />
			<EzCheckboxListTile z-model="approvedPrivacy">
				<title->
					<Text>I approve the Privacy Policy</Text>
				</title->
			</EzCheckboxListTile>
			<EzCheckboxListTile z-model="approvedCode">
				<Column>
					<Text>I approve the Code of Conduct</Text>
					<Text>(version 2)</Text>
				</Column>
			</EzCheckboxListTile>
			<Text z-if="approvedTnc!">Thank you for approving the T&Cs.</Text>
			<Text z-if="approvedPrivacy!">Thank you for approving the Privacy Policy.</Text>
			<Text z-if="approvedCode!">Thank you for approving the Code of Conduct.</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("approvedTnc") bool? _$approvedTnc = false; // --> this._approvedTnc
	@EzField("approvedPrivacy") bool? _$approvedPrivacy = false; // --> this._approvedPrivacy
	@EzField("approvedCode") bool? _$approvedCode = false; // --> this._approvedCode
}




